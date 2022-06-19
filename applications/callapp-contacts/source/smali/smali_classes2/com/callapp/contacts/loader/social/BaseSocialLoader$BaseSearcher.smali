.class public abstract Lcom/callapp/contacts/loader/social/BaseSocialLoader$BaseSearcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/loader/social/BaseSocialLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "BaseSearcher"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/loader/social/BaseSocialLoader;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/callapp/contacts/loader/social/BaseSocialLoader$BaseSearcher;->a:Lcom/callapp/contacts/loader/social/BaseSocialLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/Collection;ZLjava/util/List;)Lcom/callapp/contacts/model/contact/SocialSearchResults;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;)",
            "Lcom/callapp/contacts/model/contact/SocialSearchResults;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 128
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/PersonData;

    .line 129
    invoke-virtual {v0}, Lcom/callapp/contacts/model/PersonData;->getId()Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 131
    new-instance p1, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-direct {p1, v0, p2}, Lcom/callapp/common/model/json/JSONSocialNetworkID;-><init>(Ljava/lang/String;Z)V

    .line 132
    new-instance p2, Lcom/callapp/contacts/model/contact/SocialSearchResults;

    invoke-direct {p2, p0, p3, p1}, Lcom/callapp/contacts/model/contact/SocialSearchResults;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Collection;ZLjava/util/List;)Lcom/callapp/contacts/model/contact/SocialSearchResults;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;)",
            "Lcom/callapp/contacts/model/contact/SocialSearchResults;"
        }
    .end annotation

    .line 104
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 105
    invoke-static {p1, p3, p4, p5}, Lcom/callapp/contacts/loader/social/BaseSocialLoader$BaseSearcher;->a(Ljava/lang/String;Ljava/util/Collection;ZLjava/util/List;)Lcom/callapp/contacts/model/contact/SocialSearchResults;

    move-result-object p1

    goto :goto_2

    .line 107
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_1
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/PersonData;

    .line 109
    invoke-virtual {v1}, Lcom/callapp/contacts/model/PersonData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    if-ne p4, v0, :cond_3

    const/4 p4, 0x0

    .line 115
    invoke-static {p1, p3, p4, p2}, Lcom/callapp/contacts/loader/social/BaseSocialLoader$BaseSearcher;->a(Ljava/lang/String;Ljava/util/Collection;ZLjava/util/List;)Lcom/callapp/contacts/model/contact/SocialSearchResults;

    move-result-object p2

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-nez p2, :cond_4

    .line 119
    new-instance p2, Lcom/callapp/contacts/model/contact/SocialSearchResults;

    invoke-direct {p2, p1, p5}, Lcom/callapp/contacts/model/contact/SocialSearchResults;-><init>(Ljava/lang/String;Ljava/util/List;)V

    :cond_4
    move-object p1, p2

    :goto_2
    return-object p1
.end method

.method public abstract a(Lcom/callapp/contacts/model/contact/ContactData;)Z
.end method

.method public a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected final a(Ljava/lang/String;Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Collection;Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .line 76
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/loader/social/BaseSocialLoader$BaseSearcher;->a:Lcom/callapp/contacts/loader/social/BaseSocialLoader;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 81
    invoke-static {v7}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1092
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/loader/social/BaseSocialLoader$BaseSearcher;->a:Lcom/callapp/contacts/loader/social/BaseSocialLoader;

    invoke-virtual {v0}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .line 1093
    invoke-virtual/range {v2 .. v7}, Lcom/callapp/contacts/loader/social/BaseSocialLoader$BaseSearcher;->a(Ljava/lang/String;Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Collection;ZLjava/util/List;)Lcom/callapp/contacts/model/contact/SocialSearchResults;

    move-result-object p1

    .line 1096
    iget-object p3, p0, Lcom/callapp/contacts/loader/social/BaseSocialLoader$BaseSearcher;->a:Lcom/callapp/contacts/loader/social/BaseSocialLoader;

    invoke-virtual {p3, p2, p1}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/SocialSearchResults;)V

    .line 1140
    iget-object p3, v0, Lcom/callapp/contacts/model/contact/DataSource;->socialSearchField:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/model/contact/ContactData;->getCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1141
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object p3

    const-class p4, Lcom/callapp/contacts/model/contact/SocialSearchResults;

    invoke-virtual {p3, p4, p2, p1}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
