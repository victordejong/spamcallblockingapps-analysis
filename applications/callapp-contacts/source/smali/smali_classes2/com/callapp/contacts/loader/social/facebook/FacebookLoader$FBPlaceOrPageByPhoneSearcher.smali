.class Lcom/callapp/contacts/loader/social/facebook/FacebookLoader$FBPlaceOrPageByPhoneSearcher;
.super Lcom/callapp/contacts/loader/social/BaseSocialLoader$BaseSearcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FBPlaceOrPageByPhoneSearcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/loader/social/BaseSocialLoader<",
        "Lcom/callapp/contacts/model/contact/social/FacebookData;",
        ">.BaseSearcher;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader$FBPlaceOrPageByPhoneSearcher;->b:Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/loader/social/BaseSocialLoader$BaseSearcher;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;)V

    return-void
.end method

.method private static a(Lcom/callapp/framework/phone/Phone;)Ljava/lang/String;
    .locals 1

    .line 251
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->isValidForSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p0

    .line 253
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Collection;ZLjava/util/List;)Lcom/callapp/contacts/model/contact/SocialSearchResults;
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

    .line 294
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 296
    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/PersonData;

    .line 297
    invoke-virtual {v0}, Lcom/callapp/contacts/model/PersonData;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/callapp/contacts/model/PersonData;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    .line 299
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    .line 300
    invoke-virtual {v2, v1}, Lcom/callapp/framework/phone/Phone;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 301
    invoke-interface {p5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 306
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/callapp/contacts/loader/social/BaseSocialLoader$BaseSearcher;->a(Ljava/lang/String;Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Collection;ZLjava/util/List;)Lcom/callapp/contacts/model/contact/SocialSearchResults;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 4

    .line 264
    iget-object v0, p0, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader$FBPlaceOrPageByPhoneSearcher;->b:Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;

    invoke-virtual {v0}, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/model/contact/ContactData;->getNegatives(Lcom/callapp/contacts/model/contact/DataSource;)Ljava/util/Set;

    move-result-object v0

    .line 265
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhones()Ljava/util/Collection;

    move-result-object v1

    .line 266
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/framework/phone/Phone;

    .line 267
    invoke-static {v2}, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader$FBPlaceOrPageByPhoneSearcher;->a(Lcom/callapp/framework/phone/Phone;)Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 269
    invoke-virtual {p0, v2, p1, v0, v3}, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader$FBPlaceOrPageByPhoneSearcher;->a(Ljava/lang/String;Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Collection;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)Z
    .locals 2

    .line 279
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhones()Ljava/util/Collection;

    move-result-object p1

    .line 280
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/framework/phone/Phone;

    .line 281
    invoke-static {v0}, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader$FBPlaceOrPageByPhoneSearcher;->a(Lcom/callapp/framework/phone/Phone;)Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
