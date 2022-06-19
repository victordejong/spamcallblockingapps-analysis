.class public Lcom/callapp/contacts/model/contact/social/InstagramDataUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultText(Lcom/callapp/contacts/model/contact/social/InstagramData;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/social/InstagramData;->getLatestMediaCaption()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/social/InstagramData;->getLatestMediaCaption()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/social/InstagramData;->getBio()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/social/InstagramData;->getBio()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static setBio(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/InstagramData;Ljava/lang/String;)Z
    .locals 0

    .line 24
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/InstagramData;->getBio()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 25
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/InstagramData;->setBio(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setIsGloballyPrivate(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/InstagramData;Ljava/lang/Boolean;)Z
    .locals 0

    .line 52
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/InstagramData;->getIsGloballyPrivate()Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 53
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/InstagramData;->setIsGloballyPrivate(Ljava/lang/Boolean;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setLatestMediaCaption(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/InstagramData;Ljava/lang/String;)Z
    .locals 0

    .line 33
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/InstagramData;->getLatestMediaCaption()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 34
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/InstagramData;->setLatestMediaCaption(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setLatestMedias(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/InstagramData;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Lcom/callapp/contacts/model/contact/social/InstagramData;",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONInstagramMedia;",
            ">;)Z"
        }
    .end annotation

    .line 42
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/InstagramData;->getLatestMedias()Ljava/util/List;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/InstagramData;->setLatestMedias(Ljava/util/List;)V

    .line 44
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateUploadedPhotoUrls()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setPrivate(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/InstagramData;Ljava/lang/Boolean;)Z
    .locals 0

    .line 61
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/InstagramData;->isPrivate()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 62
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/callapp/contacts/model/contact/social/InstagramData;->setPrivate(Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setWebsite(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/InstagramData;Lcom/callapp/common/model/json/JSONWebsite;)Z
    .locals 1

    .line 14
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/InstagramData;->getWebsite()Lcom/callapp/common/model/json/JSONWebsite;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/InstagramData;->setWebsite(Lcom/callapp/common/model/json/JSONWebsite;)V

    .line 16
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateWebsites()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
