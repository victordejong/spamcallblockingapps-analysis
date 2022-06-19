.class public Lcom/callapp/contacts/model/contact/social/FoursquareDataUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAYORSHIP_START_TEXT:Ljava/lang/String; = "Mayor @ "


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultText(Lcom/callapp/contacts/model/contact/social/FoursquareData;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/social/FoursquareData;->getMayorships()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 71
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Mayor @ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/social/FoursquareData;->getMayorships()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setEmail(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FoursquareData;Lcom/callapp/common/model/json/JSONEmail;)Z
    .locals 1

    .line 25
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/FoursquareData;->getEmail()Lcom/callapp/common/model/json/JSONEmail;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/FoursquareData;->setEmail(Lcom/callapp/common/model/json/JSONEmail;)V

    .line 27
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateEmails()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setFacebookId(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FoursquareData;Lcom/callapp/common/model/json/JSONSocialNetworkID;)Z
    .locals 1

    .line 35
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/FoursquareData;->getFacebookId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/FoursquareData;->setFacebookId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 37
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateFacebookId()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setMayorships(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FoursquareData;Ljava/lang/String;)Z
    .locals 1

    .line 55
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/FoursquareData;->getMayorships()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/FoursquareData;->setMayorships(Ljava/lang/String;)V

    .line 57
    sget-object p1, Lcom/callapp/contacts/model/contact/ContactField;->foursquareData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setPhone(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FoursquareData;Lcom/callapp/framework/phone/Phone;)Z
    .locals 1

    .line 15
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/FoursquareData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/FoursquareData;->setPhone(Lcom/callapp/framework/phone/Phone;)V

    .line 17
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updatePhones()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setTwitterScreenName(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/FoursquareData;Lcom/callapp/common/model/json/JSONSocialNetworkID;)Z
    .locals 1

    .line 45
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/FoursquareData;->getTwitterScreenName()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/FoursquareData;->setTwitterScreenName(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 47
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateTwitterScreenName()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
