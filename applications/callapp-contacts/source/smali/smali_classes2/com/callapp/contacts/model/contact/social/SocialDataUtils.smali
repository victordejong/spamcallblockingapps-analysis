.class public Lcom/callapp/contacts/model/contact/social/SocialDataUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultText(ILcom/callapp/contacts/model/contact/social/SocialData;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x4

    if-eq p0, v0, :cond_4

    const/4 v0, 0x6

    if-eq p0, v0, :cond_3

    const/4 v0, 0x7

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 95
    :cond_0
    check-cast p1, Lcom/callapp/contacts/model/contact/social/VKData;

    invoke-static {p1}, Lcom/callapp/contacts/model/contact/social/VKDataUtils;->getDefaultText(Lcom/callapp/contacts/model/contact/social/VKData;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 92
    :cond_1
    check-cast p1, Lcom/callapp/contacts/model/contact/social/PinterestData;

    invoke-static {p1}, Lcom/callapp/contacts/model/contact/social/PinterestDataUtils;->getDefaultText(Lcom/callapp/contacts/model/contact/social/PinterestData;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 89
    :cond_2
    check-cast p1, Lcom/callapp/contacts/model/contact/social/InstagramData;

    invoke-static {p1}, Lcom/callapp/contacts/model/contact/social/InstagramDataUtils;->getDefaultText(Lcom/callapp/contacts/model/contact/social/InstagramData;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 86
    :cond_3
    check-cast p1, Lcom/callapp/contacts/model/contact/social/FoursquareData;

    invoke-static {p1}, Lcom/callapp/contacts/model/contact/social/FoursquareDataUtils;->getDefaultText(Lcom/callapp/contacts/model/contact/social/FoursquareData;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 83
    :cond_4
    check-cast p1, Lcom/callapp/contacts/model/contact/social/TwitterData;

    invoke-static {p1}, Lcom/callapp/contacts/model/contact/social/TwitterDataUtils;->getDefaultText(Lcom/callapp/contacts/model/contact/social/TwitterData;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 80
    :cond_5
    check-cast p1, Lcom/callapp/contacts/model/contact/social/FacebookData;

    invoke-static {p1}, Lcom/callapp/contacts/model/contact/social/FacebookDataUtils;->getDefaultText(Lcom/callapp/contacts/model/contact/social/FacebookData;)Ljava/lang/String;

    move-result-object p0

    .line 101
    :goto_0
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 102
    invoke-static {p0}, Lcom/callapp/contacts/util/HtmlUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_6
    return-object p0
.end method

.method public static onUserDismissingSocial(Landroid/content/Context;Ljava/lang/Integer;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/common/model/json/JSONSocialNetworkID;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V
    .locals 10

    .line 109
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getName()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v1

    new-instance v9, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const v0, 0x7f12056d

    .line 112
    invoke-static {v0, v2}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f12056c

    .line 113
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f120878

    .line 114
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v0, 0x7f1204c5

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/callapp/contacts/model/contact/social/SocialDataUtils$1;

    invoke-direct {v7, p1, p2, p3, p4}, Lcom/callapp/contacts/model/contact/social/SocialDataUtils$1;-><init>(Ljava/lang/Integer;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/common/model/json/JSONSocialNetworkID;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    new-instance v8, Lcom/callapp/contacts/model/contact/social/SocialDataUtils$2;

    invoke-direct {v8}, Lcom/callapp/contacts/model/contact/social/SocialDataUtils$2;-><init>()V

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 111
    invoke-virtual {v1, p0, v9}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method public static setFullName(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/SocialData;Ljava/lang/String;)Z
    .locals 1

    .line 28
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/SocialData;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/SocialData;->setFullName(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateFullName()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setIsFriend(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/SocialData;Ljava/lang/Boolean;Lcom/callapp/contacts/model/contact/ContactField;)Z
    .locals 1

    .line 57
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/SocialData;->isFriend()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/SocialData;->setIsFriend(Ljava/lang/Boolean;)V

    .line 59
    invoke-virtual {p0, p3}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Lcom/callapp/contacts/model/contact/ContactField;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setMutualFriends(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/SocialData;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Lcom/callapp/contacts/model/contact/social/SocialData;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;)Z"
        }
    .end annotation

    .line 67
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/SocialData;->getMutualFriends()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/SocialData;->setMutualFriends(Ljava/util/List;)V

    .line 69
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updateMutualFriends()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setPhotoUrl(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/SocialData;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 39
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/SocialData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/model/contact/social/SocialData;->setPhotoUrl(Ljava/lang/String;)V

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 44
    :goto_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/social/SocialData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    invoke-virtual {p1, p3}, Lcom/callapp/contacts/model/contact/social/SocialData;->setThumbnailUrl(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    if-eqz v1, :cond_2

    .line 50
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->updatePhoto()V

    :cond_2
    return v2
.end method
