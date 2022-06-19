.class public Lcom/callapp/contacts/model/contact/social/TwitterDataUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultText(Lcom/callapp/contacts/model/contact/social/TwitterData;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/social/TwitterData;->getLastTweet()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/social/TwitterData;->getLastTweet()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/social/TwitterData;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 37
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/social/TwitterData;->getDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static setDescription(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/TwitterData;Ljava/lang/String;)Z
    .locals 1

    .line 10
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/TwitterData;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/TwitterData;->setDescription(Ljava/lang/String;)V

    .line 12
    sget-object p1, Lcom/callapp/contacts/model/contact/ContactField;->twitterData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setLastTweet(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/TwitterData;Ljava/lang/String;)Z
    .locals 1

    .line 20
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/TwitterData;->getLastTweet()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/TwitterData;->setLastTweet(Ljava/lang/String;)V

    .line 22
    sget-object p1, Lcom/callapp/contacts/model/contact/ContactField;->twitterData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
