.class final enum Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SocialState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

.field public static final enum I_LOGGED_IN_AND_CONTACT_HAS_NO_PROFILE:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

.field public static final enum I_LOGGED_IN_AND_CONTACT_PROFILE_IS_PLACE:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

.field public static final enum I_LOGGED_IN_AND_CONTACT_PROFILE_IS_SURE:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

.field public static final enum I_LOGGED_IN_AND_CONTACT_PROFILE_NOT_SURE:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

.field public static final enum I_LOGGED_IN_AND_CONTACT_PROFILE_NOT_SURE_AND_HAS_PROFILE_AND_CANT_SEARCH:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

.field public static final enum I_LOGGED_IN_AND_CONTACT_PROFILE_NOT_SURE_OR_HAS_NO_PROFILE_AND_CANT_SEARCH:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

.field public static final enum I_NOT_LOGGED_IN:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

.field public static final enum I_NOT_LOGGED_IN_AND_CONTACT_HAS_NO_PROFILE:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

.field public static final enum I_NOT_LOGGED_IN_PROFILE_SURE_AND_CANT_SEARCH:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 491
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

    const-string v1, "I_LOGGED_IN_AND_CONTACT_PROFILE_IS_SURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;->I_LOGGED_IN_AND_CONTACT_PROFILE_IS_SURE:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

    .line 492
    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

    const-string v3, "I_LOGGED_IN_AND_CONTACT_PROFILE_NOT_SURE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;->I_LOGGED_IN_AND_CONTACT_PROFILE_NOT_SURE:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

    .line 493
    new-instance v3, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

    const-string v5, "I_LOGGED_IN_AND_CONTACT_HAS_NO_PROFILE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;->I_LOGGED_IN_AND_CONTACT_HAS_NO_PROFILE:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

    .line 494
    new-instance v5, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

    const-string v7, "I_LOGGED_IN_AND_CONTACT_PROFILE_IS_PLACE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;->I_LOGGED_IN_AND_CONTACT_PROFILE_IS_PLACE:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

    .line 495
    new-instance v7, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

    const-string v9, "I_LOGGED_IN_AND_CONTACT_PROFILE_NOT_SURE_OR_HAS_NO_PROFILE_AND_CANT_SEARCH"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;->I_LOGGED_IN_AND_CONTACT_PROFILE_NOT_SURE_OR_HAS_NO_PROFILE_AND_CANT_SEARCH:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

    .line 496
    new-instance v9, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

    const-string v11, "I_LOGGED_IN_AND_CONTACT_PROFILE_NOT_SURE_AND_HAS_PROFILE_AND_CANT_SEARCH"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;->I_LOGGED_IN_AND_CONTACT_PROFILE_NOT_SURE_AND_HAS_PROFILE_AND_CANT_SEARCH:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

    .line 497
    new-instance v11, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

    const-string v13, "I_NOT_LOGGED_IN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;->I_NOT_LOGGED_IN:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

    .line 498
    new-instance v13, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

    const-string v15, "I_NOT_LOGGED_IN_PROFILE_SURE_AND_CANT_SEARCH"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;->I_NOT_LOGGED_IN_PROFILE_SURE_AND_CANT_SEARCH:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

    .line 499
    new-instance v15, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

    const-string v14, "I_NOT_LOGGED_IN_AND_CONTACT_HAS_NO_PROFILE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;->I_NOT_LOGGED_IN_AND_CONTACT_HAS_NO_PROFILE:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 490
    sput-object v14, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;->$VALUES:[Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 490
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/callapp/contacts/model/contact/DataSource;Lcom/callapp/common/model/json/JSONSocialNetworkID;Lcom/callapp/contacts/model/contact/PlaceData;)Z
    .locals 0

    .line 490
    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;->isNotSureAndCanSearch(Lcom/callapp/contacts/model/contact/DataSource;Lcom/callapp/common/model/json/JSONSocialNetworkID;Lcom/callapp/contacts/model/contact/PlaceData;)Z

    move-result p0

    return p0
.end method

.method public static getState(Lcom/callapp/contacts/model/contact/DataSource;Lcom/callapp/common/model/json/JSONSocialNetworkID;Lcom/callapp/contacts/model/contact/PlaceData;)Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;
    .locals 1

    .line 511
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    iget p0, p0, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object p0

    .line 513
    instance-of v0, p0, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;

    if-nez v0, :cond_b

    instance-of v0, p0, Lcom/callapp/contacts/api/helper/pinterest/PinterestHelper;

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p0, :cond_8

    .line 520
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 528
    :cond_1
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;->hasNameFromPlace(Lcom/callapp/contacts/model/contact/PlaceData;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 529
    sget-object p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;->I_LOGGED_IN_AND_CONTACT_PROFILE_IS_PLACE:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

    return-object p0

    :cond_2
    if-eqz p1, :cond_6

    .line 532
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    .line 534
    :cond_3
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->isSure()Z

    move-result p1

    if-nez p1, :cond_5

    .line 535
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->f()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;->I_LOGGED_IN_AND_CONTACT_PROFILE_NOT_SURE:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

    return-object p0

    :cond_4
    sget-object p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;->I_LOGGED_IN_AND_CONTACT_PROFILE_NOT_SURE_AND_HAS_PROFILE_AND_CANT_SEARCH:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

    return-object p0

    .line 537
    :cond_5
    sget-object p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;->I_LOGGED_IN_AND_CONTACT_PROFILE_IS_SURE:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

    return-object p0

    .line 533
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->f()Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;->I_LOGGED_IN_AND_CONTACT_HAS_NO_PROFILE:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

    return-object p0

    :cond_7
    sget-object p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;->I_LOGGED_IN_AND_CONTACT_PROFILE_NOT_SURE_OR_HAS_NO_PROFILE_AND_CANT_SEARCH:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

    return-object p0

    :cond_8
    :goto_1
    if-eqz p1, :cond_9

    .line 521
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->g()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 522
    sget-object p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;->I_NOT_LOGGED_IN_PROFILE_SURE_AND_CANT_SEARCH:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

    return-object p0

    .line 524
    :cond_9
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->g()Z

    move-result p0

    if-eqz p0, :cond_a

    sget-object p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;->I_NOT_LOGGED_IN_AND_CONTACT_HAS_NO_PROFILE:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

    return-object p0

    :cond_a
    sget-object p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;->I_NOT_LOGGED_IN:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

    return-object p0

    :cond_b
    :goto_2
    if-eqz p1, :cond_c

    .line 514
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 515
    sget-object p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;->I_LOGGED_IN_AND_CONTACT_PROFILE_IS_SURE:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

    return-object p0

    .line 517
    :cond_c
    sget-object p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;->I_NOT_LOGGED_IN_AND_CONTACT_HAS_NO_PROFILE:Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

    return-object p0
.end method

.method private static hasNameFromPlace(Lcom/callapp/contacts/model/contact/PlaceData;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/PlaceData;->getFullName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isNotSureAndCanSearch(Lcom/callapp/contacts/model/contact/DataSource;Lcom/callapp/common/model/json/JSONSocialNetworkID;Lcom/callapp/contacts/model/contact/PlaceData;)Z
    .locals 1

    .line 502
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    iget p0, p0, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object p0

    .line 503
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;->hasNameFromPlace(Lcom/callapp/contacts/model/contact/PlaceData;)Z

    move-result p2

    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->isSure()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->f()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;
    .locals 1

    .line 490
    const-class v0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;
    .locals 1

    .line 490
    sget-object v0, Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;->$VALUES:[Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

    invoke-virtual {v0}, [Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/activity/contact/cards/SocialFeedCard$SocialState;

    return-object v0
.end method
