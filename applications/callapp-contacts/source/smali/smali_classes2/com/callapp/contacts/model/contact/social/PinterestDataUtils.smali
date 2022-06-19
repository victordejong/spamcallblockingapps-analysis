.class public Lcom/callapp/contacts/model/contact/social/PinterestDataUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultText(Lcom/callapp/contacts/model/contact/social/PinterestData;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/social/PinterestData;->getBio()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setBio(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/PinterestData;Ljava/lang/String;)Z
    .locals 1

    .line 10
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/PinterestData;->getBio()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/PinterestData;->setBio(Ljava/lang/String;)V

    .line 12
    sget-object p1, Lcom/callapp/contacts/model/contact/ContactField;->pinterestData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setPubProfileUrl(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/PinterestData;Ljava/lang/String;)Z
    .locals 1

    .line 20
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/PinterestData;->getPubProfileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/PinterestData;->setPubProfileUrl(Ljava/lang/String;)V

    .line 22
    sget-object p1, Lcom/callapp/contacts/model/contact/ContactField;->pinterestData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
