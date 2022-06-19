.class public Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;
.super Lcom/callapp/contacts/loader/social/BaseSocialLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/loader/social/facebook/FacebookLoader$FBPlaceOrPageByPhoneSearcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/loader/social/BaseSocialLoader<",
        "Lcom/callapp/contacts/model/contact/social/FacebookData;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 44
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->facebookId:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->genomeData:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->emails:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->names:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;->b:Ljava/util/Set;

    .line 47
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->facebookId:Lcom/callapp/contacts/model/contact/ContactField;

    const/16 v1, 0xc

    new-array v1, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->facebookData:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->facebookSearchResults:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->birthday:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->emails:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->mutualFriends:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->names:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->organizations:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->websites:Lcom/callapp/contacts/model/contact/ContactField;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->isFriend:Lcom/callapp/contacts/model/contact/ContactField;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->uploadedPhotosUrl:Lcom/callapp/contacts/model/contact/ContactField;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;->c:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;->a:Ljava/util/List;

    new-instance v1, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader$FBPlaceOrPageByPhoneSearcher;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader$FBPlaceOrPageByPhoneSearcher;-><init>(Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-super {p0}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->a()V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 7

    .line 55
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 56
    iget-object v1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    .line 58
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getFacebookData()Lcom/callapp/contacts/model/contact/social/FacebookData;

    move-result-object v2

    if-nez v2, :cond_0

    .line 59
    new-instance v2, Lcom/callapp/contacts/model/contact/social/FacebookData;

    invoke-direct {v2}, Lcom/callapp/contacts/model/contact/social/FacebookData;-><init>()V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/model/contact/ContactData;->setFacebookData(Lcom/callapp/contacts/model/contact/social/FacebookData;)V

    .line 62
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/LoadContext;->a()Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    move-result-object v2

    .line 64
    sget-object v3, Lcom/callapp/contacts/loader/social/facebook/LoadFbUserOrPageTask;->c:Ljava/util/Set;

    invoke-static {v1, v3}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    new-instance v3, Lcom/callapp/contacts/loader/social/facebook/LoadFbUserOrPageTask;

    invoke-direct {v3, p0, p1, p2}, Lcom/callapp/contacts/loader/social/facebook/LoadFbUserOrPageTask;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_1
    const/4 v3, 0x1

    new-array v4, v3, [Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v5, 0x0

    .line 68
    sget-object v6, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 69
    new-instance v4, Lcom/callapp/contacts/loader/social/facebook/LoadFbPhotoTask;

    invoke-direct {v4, p0, p1, p2}, Lcom/callapp/contacts/loader/social/facebook/LoadFbPhotoTask;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    invoke-virtual {v2, v4}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 72
    :cond_2
    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->facebookData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 73
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    const-string v4, "user_posts"

    invoke-static {v4}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->n(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 74
    new-instance v4, Lcom/callapp/contacts/loader/social/facebook/LoadFbLastPostTask;

    invoke-direct {v4, p0, p1, p2}, Lcom/callapp/contacts/loader/social/facebook/LoadFbLastPostTask;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    invoke-virtual {v2, v4}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 76
    :cond_3
    new-instance v4, Lcom/callapp/contacts/loader/social/facebook/LoadFbLikesTask;

    invoke-direct {v4, p0, p1, p2}, Lcom/callapp/contacts/loader/social/facebook/LoadFbLikesTask;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    invoke-virtual {v2, v4}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 79
    :cond_4
    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->uploadedPhotosUrl:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 80
    new-instance v4, Lcom/callapp/contacts/loader/social/facebook/LoadFbLastUploadedPhotos;

    invoke-direct {v4, p0, p1, p2}, Lcom/callapp/contacts/loader/social/facebook/LoadFbLastUploadedPhotos;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    invoke-virtual {v2, v4}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 83
    :cond_5
    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->isFriend:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getFacebookData()Lcom/callapp/contacts/model/contact/social/FacebookData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/social/FacebookData;->isFriend()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 84
    new-instance v0, Lcom/callapp/contacts/loader/social/LoadIsFriendTask;

    invoke-virtual {p0}, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v4

    iget v4, v4, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-direct {v0, p0, p1, p2, v4}, Lcom/callapp/contacts/loader/social/LoadIsFriendTask;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;I)V

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 87
    :cond_6
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->mutualFriends:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 88
    new-instance v0, Lcom/callapp/contacts/loader/social/LoadMutualFriendsTask;

    invoke-virtual {p0}, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v1

    iget v1, v1, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/callapp/contacts/loader/social/LoadMutualFriendsTask;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;I)V

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 93
    :cond_7
    invoke-virtual {p1, v2, v3}, Lcom/callapp/contacts/loader/api/LoadContext;->a(Lcom/callapp/contacts/framework/util/MultiTaskRunner;Z)V

    return-void
.end method

.method public final synthetic a(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/model/contact/social/SocialData;Lcom/callapp/contacts/model/contact/social/SocialData;)V
    .locals 11

    .line 42
    check-cast p2, Lcom/callapp/contacts/model/contact/social/FacebookData;

    check-cast p3, Lcom/callapp/contacts/model/contact/social/FacebookData;

    .line 1098
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->a(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/model/contact/social/SocialData;Lcom/callapp/contacts/model/contact/social/SocialData;)V

    .line 1099
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 1100
    iget-object v1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    .line 1102
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/LoadContext;->b()Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    move-result-object v2

    .line 1104
    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->birthday:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    if-nez p2, :cond_0

    move-object v3, v4

    goto :goto_0

    .line 1105
    :cond_0
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getBirthday()Lcom/callapp/common/model/json/JSONDate;

    move-result-object v3

    :goto_0
    if-nez p3, :cond_1

    move-object v5, v4

    goto :goto_1

    .line 1106
    :cond_1
    invoke-virtual {p3}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getBirthday()Lcom/callapp/common/model/json/JSONDate;

    move-result-object v5

    .line 1107
    :goto_1
    invoke-static {v3, v5}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1108
    new-instance v3, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader$1;

    invoke-direct {v3, p0, v0}, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader$1;-><init>(Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 1118
    :cond_2
    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->emails:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez p2, :cond_3

    move-object v3, v4

    goto :goto_2

    .line 1119
    :cond_3
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getEmail()Lcom/callapp/common/model/json/JSONEmail;

    move-result-object v3

    :goto_2
    if-nez p3, :cond_4

    move-object v5, v4

    goto :goto_3

    .line 1120
    :cond_4
    invoke-virtual {p3}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getEmail()Lcom/callapp/common/model/json/JSONEmail;

    move-result-object v5

    .line 1121
    :goto_3
    invoke-static {v3, v5}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1122
    new-instance v3, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader$2;

    invoke-direct {v3, p0, v0}, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader$2;-><init>(Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 1132
    :cond_5
    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->organizations:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez p2, :cond_6

    move-object v3, v4

    goto :goto_4

    .line 1133
    :cond_6
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getOrganizations()Ljava/util/Collection;

    move-result-object v3

    :goto_4
    if-nez p3, :cond_7

    move-object v5, v4

    goto :goto_5

    .line 1134
    :cond_7
    invoke-virtual {p3}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getOrganizations()Ljava/util/Collection;

    move-result-object v5

    .line 1135
    :goto_5
    invoke-static {v3, v5}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1136
    new-instance v3, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader$3;

    invoke-direct {v3, p0, v0}, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader$3;-><init>(Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 1146
    :cond_8
    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->websites:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    if-nez p2, :cond_9

    move-object v3, v4

    goto :goto_6

    .line 1147
    :cond_9
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getWebsites()Ljava/util/Collection;

    move-result-object v3

    :goto_6
    if-nez p3, :cond_a

    move-object v5, v4

    goto :goto_7

    .line 1148
    :cond_a
    invoke-virtual {p3}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getWebsites()Ljava/util/Collection;

    move-result-object v5

    .line 1149
    :goto_7
    invoke-static {v3, v5}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1150
    new-instance v3, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader$4;

    invoke-direct {v3, p0, v0}, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader$4;-><init>(Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_b
    const/4 v3, 0x1

    new-array v5, v3, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 1160
    sget-object v6, Lcom/callapp/contacts/model/contact/ContactField;->addresses:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v1, v5}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    if-nez p2, :cond_c

    move-object v5, v4

    goto :goto_8

    .line 1161
    :cond_c
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getAddress()Lcom/callapp/common/model/json/JSONAddress;

    move-result-object v5

    :goto_8
    if-nez p3, :cond_d

    move-object v6, v4

    goto :goto_9

    .line 1162
    :cond_d
    invoke-virtual {p3}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getAddress()Lcom/callapp/common/model/json/JSONAddress;

    move-result-object v6

    .line 1163
    :goto_9
    invoke-static {v5, v6}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 1164
    new-instance v5, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader$5;

    invoke-direct {v5, p0, v0}, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader$5;-><init>(Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v2, v5}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_e
    new-array v5, v3, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 1174
    sget-object v6, Lcom/callapp/contacts/model/contact/ContactField;->latLng:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v6, v5, v7

    invoke-static {v1, v5}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    if-nez p2, :cond_f

    move-object v5, v4

    goto :goto_a

    .line 1175
    :cond_f
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getLat()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    :goto_a
    if-nez p3, :cond_10

    move-object v6, v4

    goto :goto_b

    .line 1176
    :cond_10
    invoke-virtual {p3}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getLat()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    :goto_b
    if-nez p2, :cond_11

    move-object v8, v4

    goto :goto_c

    .line 1177
    :cond_11
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getLng()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    :goto_c
    if-nez p3, :cond_12

    move-object v9, v4

    goto :goto_d

    .line 1178
    :cond_12
    invoke-virtual {p3}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getLng()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    .line 1179
    :goto_d
    invoke-static {v5, v6}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-static {v8, v9}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 1180
    :cond_13
    new-instance v5, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader$6;

    invoke-direct {v5, p0, v0}, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader$6;-><init>(Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v2, v5}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_14
    new-array v5, v3, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 1190
    sget-object v6, Lcom/callapp/contacts/model/contact/ContactField;->categories:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v6, v5, v7

    invoke-static {v1, v5}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    if-nez p2, :cond_15

    move-object v5, v4

    goto :goto_e

    .line 1191
    :cond_15
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getCategories()Ljava/util/Set;

    move-result-object v5

    :goto_e
    if-nez p3, :cond_16

    move-object v6, v4

    goto :goto_f

    .line 1192
    :cond_16
    invoke-virtual {p3}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getCategories()Ljava/util/Set;

    move-result-object v6

    .line 1193
    :goto_f
    invoke-static {v5, v6}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 1194
    new-instance v5, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader$7;

    invoke-direct {v5, p0, v0}, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader$7;-><init>(Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v2, v5}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_17
    new-array v5, v3, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 1204
    sget-object v6, Lcom/callapp/contacts/model/contact/ContactField;->openingHours:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v6, v5, v7

    invoke-static {v1, v5}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    if-nez p2, :cond_18

    move-object v5, v4

    goto :goto_10

    .line 1205
    :cond_18
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getOpeningHours()Lcom/callapp/common/model/json/JSONOpeningHours;

    move-result-object v5

    :goto_10
    if-nez p3, :cond_19

    move-object v6, v4

    goto :goto_11

    .line 1206
    :cond_19
    invoke-virtual {p3}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getOpeningHours()Lcom/callapp/common/model/json/JSONOpeningHours;

    move-result-object v6

    .line 1207
    :goto_11
    invoke-static {v5, v6}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 1208
    new-instance v5, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader$8;

    invoke-direct {v5, p0, v0}, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader$8;-><init>(Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v2, v5}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_1a
    new-array v3, v3, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 1218
    sget-object v5, Lcom/callapp/contacts/model/contact/ContactField;->uploadedPhotosUrl:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v5, v3, v7

    invoke-static {v1, v3}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    if-nez p2, :cond_1b

    move-object p2, v4

    goto :goto_12

    .line 1219
    :cond_1b
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getUploadedPhotosUrl()Ljava/util/List;

    move-result-object p2

    :goto_12
    if-nez p3, :cond_1c

    goto :goto_13

    .line 1220
    :cond_1c
    invoke-virtual {p3}, Lcom/callapp/contacts/model/contact/social/FacebookData;->getUploadedPhotosUrl()Ljava/util/List;

    move-result-object v4

    .line 1221
    :goto_13
    invoke-static {p2, v4}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1d

    .line 1222
    new-instance p2, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader$9;

    invoke-direct {p2, p0, v0}, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader$9;-><init>(Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v2, p2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 1232
    :cond_1d
    iget-boolean p2, p0, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;->d:Z

    invoke-virtual {p1, v2, p2}, Lcom/callapp/contacts/loader/api/LoadContext;->a(Lcom/callapp/contacts/framework/util/MultiTaskRunner;Z)V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 317
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->updateFacebookId()V

    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/contact/social/FacebookData;",
            ">;"
        }
    .end annotation

    .line 339
    const-class v0, Lcom/callapp/contacts/model/contact/social/FacebookData;

    return-object v0
.end method

.method public getDataSource()Lcom/callapp/contacts/model/contact/DataSource;
    .locals 1

    .line 334
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->facebook:Lcom/callapp/contacts/model/contact/DataSource;

    return-object v0
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 329
    sget-object v0, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;->b:Ljava/util/Set;

    return-object v0
.end method

.method public getLoadedFields()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 323
    sget-object v0, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;->c:Ljava/util/EnumSet;

    return-object v0
.end method

.method public bridge synthetic getLoadedFields()Ljava/util/Set;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;->getLoadedFields()Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getSocialHelper()Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;
    .locals 1

    .line 312
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getFacebookHelper()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v0

    return-object v0
.end method
