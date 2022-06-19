.class public Lcom/callapp/contacts/loader/social/BaseSocialLoader$FriendsExactNameSearcher;
.super Lcom/callapp/contacts/loader/social/BaseSocialLoader$BaseSearcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/loader/social/BaseSocialLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FriendsExactNameSearcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/loader/social/BaseSocialLoader<",
        "TT;>.BaseSearcher;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/callapp/contacts/loader/social/BaseSocialLoader;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/callapp/contacts/loader/social/BaseSocialLoader$FriendsExactNameSearcher;->b:Lcom/callapp/contacts/loader/social/BaseSocialLoader;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/loader/social/BaseSocialLoader$BaseSearcher;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 4

    .line 259
    iget-object v0, p0, Lcom/callapp/contacts/loader/social/BaseSocialLoader$FriendsExactNameSearcher;->b:Lcom/callapp/contacts/loader/social/BaseSocialLoader;

    invoke-virtual {v0}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/model/contact/ContactData;->getNegatives(Lcom/callapp/contacts/model/contact/DataSource;)Ljava/util/Set;

    move-result-object v0

    .line 260
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getNames()Ljava/util/Collection;

    move-result-object v1

    .line 261
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 262
    invoke-virtual {p1, v2}, Lcom/callapp/contacts/model/contact/ContactData;->isNameSure(Ljava/lang/String;)Z

    move-result v3

    .line 263
    invoke-virtual {p0, v2, p1, v3, v0}, Lcom/callapp/contacts/loader/social/BaseSocialLoader$FriendsExactNameSearcher;->a(Ljava/lang/String;Lcom/callapp/contacts/model/contact/ContactData;ZLjava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)Z
    .locals 0

    .line 255
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/loader/social/BaseSocialLoader$BaseSearcher;->a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method final a(Ljava/lang/String;Lcom/callapp/contacts/model/contact/ContactData;ZLjava/util/Set;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/loader/social/BaseSocialLoader$FriendsExactNameSearcher;->b:Lcom/callapp/contacts/loader/social/BaseSocialLoader;

    invoke-virtual {v1}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->getSocialHelper()Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(ZZ)Ljava/util/Map;

    move-result-object v1

    .line 273
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v0

    .line 276
    :cond_0
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 277
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->k(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 278
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/model/Friend;

    .line 279
    iget-object v4, v3, Lcom/callapp/contacts/model/Friend;->fullName:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 282
    iget-object v4, v3, Lcom/callapp/contacts/model/Friend;->id:Ljava/lang/String;

    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/callapp/contacts/model/Friend;->id:Ljava/lang/String;

    invoke-interface {p4, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 286
    iget-object p1, p0, Lcom/callapp/contacts/loader/social/BaseSocialLoader$FriendsExactNameSearcher;->b:Lcom/callapp/contacts/loader/social/BaseSocialLoader;

    invoke-virtual {p1}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->getSocialHelper()Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p1

    if-nez p1, :cond_2

    .line 287
    new-instance p1, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    iget-object p4, v3, Lcom/callapp/contacts/model/Friend;->id:Ljava/lang/String;

    invoke-direct {p1, p4, p3}, Lcom/callapp/common/model/json/JSONSocialNetworkID;-><init>(Ljava/lang/String;Z)V

    .line 288
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->assertDeviceDataExist()V

    .line 291
    iget-object p4, p0, Lcom/callapp/contacts/loader/social/BaseSocialLoader$FriendsExactNameSearcher;->b:Lcom/callapp/contacts/loader/social/BaseSocialLoader;

    invoke-virtual {p4}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->getSocialHelper()Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object p4

    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p2, p1, p3}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/callapp/contacts/loader/social/QuotaReachedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v2

    :catch_0
    :cond_3
    return v0
.end method
