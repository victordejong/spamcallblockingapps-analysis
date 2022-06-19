.class public Lcom/callapp/contacts/loader/external/GravatarLoaderHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 5

    .line 86
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 87
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p0, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "yahoo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "skype"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "gtalk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "icq"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "aim"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_1
    packed-switch p0, :pswitch_data_0

    return v4

    :pswitch_0
    return v2

    :pswitch_1
    return v1

    :pswitch_2
    const/4 p0, 0x5

    return p0

    :pswitch_3
    const/4 p0, 0x6

    return p0

    :pswitch_4
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x17945 -> :sswitch_4
        0x19697 -> :sswitch_3
        0x5e1a993 -> :sswitch_2
        0x68706d6 -> :sswitch_1
        0x6d6c840 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lcom/callapp/contacts/model/contact/GravatarData;Ljava/lang/Integer;)Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/GravatarData;->getInstagramId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p0

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/GravatarData;->getFoursquareId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p0

    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/GravatarData;->getPinterestId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p0

    goto :goto_0

    .line 64
    :cond_3
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/GravatarData;->getTwitterScreenName()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p0

    goto :goto_0

    .line 60
    :cond_4
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/GravatarData;->getFacebookId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static a(Lcom/callapp/contacts/model/contact/GravatarData;Lcom/callapp/contacts/model/contact/GravatarData;)V
    .locals 6

    .line 19
    sget-object v0, Lcom/callapp/common/api/ApiConstants;->c:[Ljava/lang/Integer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_7

    aget-object v3, v0, v2

    .line 1025
    invoke-static {p0, v3}, Lcom/callapp/contacts/loader/external/GravatarLoaderHelper;->a(Lcom/callapp/contacts/model/contact/GravatarData;Ljava/lang/Integer;)Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1026
    invoke-virtual {v4}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->isSure()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1027
    :cond_0
    invoke-static {p1, v3}, Lcom/callapp/contacts/loader/external/GravatarLoaderHelper;->a(Lcom/callapp/contacts/model/contact/GravatarData;Ljava/lang/Integer;)Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1035
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_5

    const/4 v5, 0x4

    if-eq v3, v5, :cond_4

    const/16 v5, 0x9

    if-eq v3, v5, :cond_3

    const/4 v5, 0x6

    if-eq v3, v5, :cond_2

    const/4 v5, 0x7

    if-eq v3, v5, :cond_1

    goto :goto_1

    .line 1043
    :cond_1
    invoke-virtual {p0, v4}, Lcom/callapp/contacts/model/contact/GravatarData;->setInstagramId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    goto :goto_1

    .line 1046
    :cond_2
    invoke-virtual {p0, v4}, Lcom/callapp/contacts/model/contact/GravatarData;->setFoursquareId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    goto :goto_1

    .line 1049
    :cond_3
    invoke-virtual {p0, v4}, Lcom/callapp/contacts/model/contact/GravatarData;->setPinterestId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    goto :goto_1

    .line 1040
    :cond_4
    invoke-virtual {p0, v4}, Lcom/callapp/contacts/model/contact/GravatarData;->setTwitterScreenName(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    goto :goto_1

    .line 1037
    :cond_5
    invoke-virtual {p0, v4}, Lcom/callapp/contacts/model/contact/GravatarData;->setFacebookId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method static a(Lcom/callapp/contacts/model/contact/GravatarData;Ljava/lang/String;IZ)V
    .locals 1

    .line 124
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 125
    new-instance v0, Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-direct {v0, p1, p3}, Lcom/callapp/common/model/json/JSONSocialNetworkID;-><init>(Ljava/lang/String;Z)V

    const/4 p1, 0x1

    if-eq p2, p1, :cond_4

    const/4 p1, 0x4

    if-eq p2, p1, :cond_3

    const/16 p1, 0x9

    if-eq p2, p1, :cond_2

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    const/4 p1, 0x7

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/GravatarData;->setInstagramId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    return-void

    .line 137
    :cond_1
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/GravatarData;->setFoursquareId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    return-void

    .line 140
    :cond_2
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/GravatarData;->setPinterestId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    goto :goto_0

    .line 131
    :cond_3
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/GravatarData;->setTwitterScreenName(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    return-void

    .line 128
    :cond_4
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/contact/GravatarData;->setFacebookId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public static b(Ljava/lang/String;)I
    .locals 5

    .line 104
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 105
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p0, -0x1

    goto :goto_1

    :sswitch_0
    const-string v0, "foursquare"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v0, "facebook"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v0, "instagram"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "pinterest"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v0, "twitter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    goto :goto_1

    :sswitch_5
    const-string v0, "google"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    :goto_1
    packed-switch p0, :pswitch_data_0

    return v4

    :pswitch_0
    const/4 p0, 0x6

    return p0

    :pswitch_1
    return v3

    :pswitch_2
    const/4 p0, 0x7

    return p0

    :pswitch_3
    const/16 p0, 0x9

    return p0

    :pswitch_4
    return v2

    :pswitch_5
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x49eca1c7 -> :sswitch_5
        -0x369e558d -> :sswitch_4
        -0xfc866 -> :sswitch_3
        0x1b907b2 -> :sswitch_2
        0x1da19ac6 -> :sswitch_1
        0x720b71c3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
