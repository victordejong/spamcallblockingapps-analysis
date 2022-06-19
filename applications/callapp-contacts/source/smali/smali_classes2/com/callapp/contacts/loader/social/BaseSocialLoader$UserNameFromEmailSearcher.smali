.class Lcom/callapp/contacts/loader/social/BaseSocialLoader$UserNameFromEmailSearcher;
.super Lcom/callapp/contacts/loader/social/BaseSocialLoader$FriendsExactNameSearcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/loader/social/BaseSocialLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserNameFromEmailSearcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/loader/social/BaseSocialLoader<",
        "TT;>.FriendsExactNameSearcher;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/callapp/contacts/loader/social/BaseSocialLoader;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/callapp/contacts/loader/social/BaseSocialLoader$UserNameFromEmailSearcher;->c:Lcom/callapp/contacts/loader/social/BaseSocialLoader;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/loader/social/BaseSocialLoader$FriendsExactNameSearcher;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/social/BaseSocialLoader$1;)V
    .locals 0

    .line 305
    invoke-direct {p0, p1}, Lcom/callapp/contacts/loader/social/BaseSocialLoader$UserNameFromEmailSearcher;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;)V

    return-void
.end method

.method private static a(Lcom/callapp/common/model/json/JSONEmail;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 343
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONEmail;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONEmail;->getEmail()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 347
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 351
    :cond_1
    invoke-static {p0}, Lcom/callapp/common/util/RegexUtils;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 352
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 7

    .line 309
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getEmails()Ljava/util/Collection;

    move-result-object v0

    .line 312
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 313
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/common/model/json/JSONEmail;

    .line 314
    invoke-static {v2}, Lcom/callapp/contacts/loader/social/BaseSocialLoader$UserNameFromEmailSearcher;->a(Lcom/callapp/common/model/json/JSONEmail;)Ljava/lang/String;

    move-result-object v3

    .line 315
    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 316
    invoke-virtual {p1, v2}, Lcom/callapp/contacts/model/contact/ContactData;->isEmailFromDevice(Lcom/callapp/common/model/json/JSONEmail;)Z

    move-result v2

    .line 317
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 321
    :cond_1
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Map;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    return v2

    .line 324
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/loader/social/BaseSocialLoader$UserNameFromEmailSearcher;->c:Lcom/callapp/contacts/loader/social/BaseSocialLoader;

    invoke-virtual {v0}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/model/contact/ContactData;->getNegatives(Lcom/callapp/contacts/model/contact/DataSource;)Ljava/util/Set;

    move-result-object v0

    .line 326
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 327
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v6, p1, v4, v0}, Lcom/callapp/contacts/loader/social/BaseSocialLoader$UserNameFromEmailSearcher;->a(Ljava/lang/String;Lcom/callapp/contacts/model/contact/ContactData;ZLjava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v5

    .line 332
    :cond_4
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 333
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 334
    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->k(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 335
    invoke-virtual {p0, v3, p1, v0, v2}, Lcom/callapp/contacts/loader/social/BaseSocialLoader$UserNameFromEmailSearcher;->a(Ljava/lang/String;Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Collection;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    return v5

    :cond_6
    return v2
.end method

.method public final a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)Z
    .locals 1

    .line 360
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getEmails()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/common/model/json/JSONEmail;

    .line 361
    invoke-static {v0}, Lcom/callapp/contacts/loader/social/BaseSocialLoader$UserNameFromEmailSearcher;->a(Lcom/callapp/common/model/json/JSONEmail;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
