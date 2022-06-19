.class public Lcom/callapp/contacts/loader/vk/VKLoader;
.super Lcom/callapp/contacts/loader/social/BaseSocialLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/loader/social/BaseSocialLoader<",
        "Lcom/callapp/contacts/model/contact/social/VKData;",
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
    .locals 4

    .line 34
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->vkId:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->genomeData:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->names:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/loader/vk/VKLoader;->b:Ljava/util/Set;

    .line 36
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->vkId:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->vkData:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->names:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->isFriend:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->uploadedPhotosUrl:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->webVideos:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/loader/vk/VKLoader;->c:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 5

    .line 42
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 43
    iget-object v1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    .line 45
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getVKData()Lcom/callapp/contacts/model/contact/social/VKData;

    move-result-object v2

    if-nez v2, :cond_0

    .line 46
    new-instance v2, Lcom/callapp/contacts/model/contact/social/VKData;

    invoke-direct {v2}, Lcom/callapp/contacts/model/contact/social/VKData;-><init>()V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/model/contact/ContactData;->setVKData(Lcom/callapp/contacts/model/contact/social/VKData;)V

    .line 48
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/LoadContext;->a()Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    move-result-object v2

    .line 50
    sget-object v3, Lcom/callapp/contacts/loader/vk/LoadVKDataTask;->c:Ljava/util/EnumSet;

    invoke-static {v1, v3}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 51
    new-instance v3, Lcom/callapp/contacts/loader/vk/LoadVKDataTask;

    invoke-direct {v3, p0, p1, p2}, Lcom/callapp/contacts/loader/vk/LoadVKDataTask;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 54
    :cond_1
    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->mutualFriends:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 55
    new-instance v3, Lcom/callapp/contacts/loader/social/LoadMutualFriendsTask;

    invoke-virtual {p0}, Lcom/callapp/contacts/loader/vk/VKLoader;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v4

    iget v4, v4, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-direct {v3, p0, p1, p2, v4}, Lcom/callapp/contacts/loader/social/LoadMutualFriendsTask;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;I)V

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 58
    :cond_2
    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->isFriend:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getVKData()Lcom/callapp/contacts/model/contact/social/VKData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/social/VKData;->isFriend()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 59
    new-instance v0, Lcom/callapp/contacts/loader/social/LoadIsFriendTask;

    const/16 v3, 0xa

    invoke-direct {v0, p0, p1, p2, v3}, Lcom/callapp/contacts/loader/social/LoadIsFriendTask;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;I)V

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 62
    :cond_3
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->uploadedPhotosUrl:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 63
    new-instance v0, Lcom/callapp/contacts/loader/vk/LoadVKLastUploadedPhotos;

    invoke-direct {v0, p0, p1, p2}, Lcom/callapp/contacts/loader/vk/LoadVKLastUploadedPhotos;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 66
    :cond_4
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->webVideos:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 67
    new-instance v0, Lcom/callapp/contacts/loader/vk/LoadVKLastUploadedVideos;

    invoke-direct {v0, p0, p1, p2}, Lcom/callapp/contacts/loader/vk/LoadVKLastUploadedVideos;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 70
    :cond_5
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->vkData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 71
    new-instance v0, Lcom/callapp/contacts/loader/vk/LoadVKLastPostTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/callapp/contacts/loader/vk/LoadVKLastPostTask;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 74
    :cond_6
    iget-boolean p2, p0, Lcom/callapp/contacts/loader/vk/VKLoader;->d:Z

    invoke-virtual {p1, v2, p2}, Lcom/callapp/contacts/loader/api/LoadContext;->a(Lcom/callapp/contacts/framework/util/MultiTaskRunner;Z)V

    return-void
.end method

.method public final synthetic a(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/model/contact/social/SocialData;Lcom/callapp/contacts/model/contact/social/SocialData;)V
    .locals 8

    .line 33
    check-cast p2, Lcom/callapp/contacts/model/contact/social/VKData;

    check-cast p3, Lcom/callapp/contacts/model/contact/social/VKData;

    .line 1079
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;->a(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/model/contact/social/SocialData;Lcom/callapp/contacts/model/contact/social/SocialData;)V

    .line 1080
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 1081
    iget-object v1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    .line 1083
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/LoadContext;->b()Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 1086
    sget-object v5, Lcom/callapp/contacts/model/contact/ContactField;->birthday:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v4}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    if-nez p2, :cond_0

    move-object v4, v5

    goto :goto_0

    .line 1087
    :cond_0
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/social/VKData;->getBirthDate()Ljava/util/Date;

    move-result-object v4

    :goto_0
    if-nez p3, :cond_1

    move-object v7, v5

    goto :goto_1

    .line 1088
    :cond_1
    invoke-virtual {p3}, Lcom/callapp/contacts/model/contact/social/VKData;->getBirthDate()Ljava/util/Date;

    move-result-object v7

    .line 1089
    :goto_1
    invoke-static {v4, v7}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1090
    new-instance v4, Lcom/callapp/contacts/loader/vk/VKLoader$1;

    invoke-direct {v4, p0, v0}, Lcom/callapp/contacts/loader/vk/VKLoader$1;-><init>(Lcom/callapp/contacts/loader/vk/VKLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v2, v4}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_2
    const/4 v4, 0x2

    new-array v4, v4, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 1100
    sget-object v7, Lcom/callapp/contacts/model/contact/ContactField;->phones:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v7, v4, v6

    sget-object v7, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v7, v4, v3

    invoke-static {v1, v4}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez p2, :cond_3

    move-object v4, v5

    goto :goto_2

    .line 1101
    :cond_3
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/social/VKData;->getPhones()Ljava/util/List;

    move-result-object v4

    :goto_2
    if-nez p3, :cond_4

    move-object v7, v5

    goto :goto_3

    .line 1102
    :cond_4
    invoke-virtual {p3}, Lcom/callapp/contacts/model/contact/social/VKData;->getPhones()Ljava/util/List;

    move-result-object v7

    .line 1103
    :goto_3
    invoke-static {v4, v7}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1104
    new-instance v4, Lcom/callapp/contacts/loader/vk/VKLoader$2;

    invoke-direct {v4, p0, v0}, Lcom/callapp/contacts/loader/vk/VKLoader$2;-><init>(Lcom/callapp/contacts/loader/vk/VKLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v2, v4}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_5
    new-array v4, v3, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 1114
    sget-object v7, Lcom/callapp/contacts/model/contact/ContactField;->websites:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v7, v4, v6

    invoke-static {v1, v4}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-nez p2, :cond_6

    move-object v4, v5

    goto :goto_4

    .line 1115
    :cond_6
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/social/VKData;->getWebsites()Ljava/util/Collection;

    move-result-object v4

    :goto_4
    if-nez p3, :cond_7

    move-object v7, v5

    goto :goto_5

    .line 1116
    :cond_7
    invoke-virtual {p3}, Lcom/callapp/contacts/model/contact/social/VKData;->getWebsites()Ljava/util/Collection;

    move-result-object v7

    .line 1117
    :goto_5
    invoke-static {v4, v7}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1118
    new-instance v4, Lcom/callapp/contacts/loader/vk/VKLoader$3;

    invoke-direct {v4, p0, v0}, Lcom/callapp/contacts/loader/vk/VKLoader$3;-><init>(Lcom/callapp/contacts/loader/vk/VKLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v2, v4}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_8
    new-array v4, v3, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 1128
    sget-object v7, Lcom/callapp/contacts/model/contact/ContactField;->facebookId:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v7, v4, v6

    invoke-static {v1, v4}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    if-nez p2, :cond_9

    move-object v4, v5

    goto :goto_6

    .line 1129
    :cond_9
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/social/VKData;->getFacebookId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v4

    :goto_6
    if-nez p3, :cond_a

    move-object v7, v5

    goto :goto_7

    .line 1130
    :cond_a
    invoke-virtual {p3}, Lcom/callapp/contacts/model/contact/social/VKData;->getFacebookId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v7

    .line 1131
    :goto_7
    invoke-static {v4, v7}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1132
    new-instance v4, Lcom/callapp/contacts/loader/vk/VKLoader$4;

    invoke-direct {v4, p0, v0}, Lcom/callapp/contacts/loader/vk/VKLoader$4;-><init>(Lcom/callapp/contacts/loader/vk/VKLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v2, v4}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_b
    new-array v4, v3, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 1142
    sget-object v7, Lcom/callapp/contacts/model/contact/ContactField;->twitterScreenName:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v7, v4, v6

    invoke-static {v1, v4}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    if-nez p2, :cond_c

    move-object v4, v5

    goto :goto_8

    .line 1143
    :cond_c
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/social/VKData;->getTwitterScreenName()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v4

    :goto_8
    if-nez p3, :cond_d

    move-object v7, v5

    goto :goto_9

    .line 1144
    :cond_d
    invoke-virtual {p3}, Lcom/callapp/contacts/model/contact/social/VKData;->getTwitterScreenName()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v7

    .line 1145
    :goto_9
    invoke-static {v4, v7}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 1146
    new-instance v4, Lcom/callapp/contacts/loader/vk/VKLoader$5;

    invoke-direct {v4, p0, v0}, Lcom/callapp/contacts/loader/vk/VKLoader$5;-><init>(Lcom/callapp/contacts/loader/vk/VKLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v2, v4}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_e
    new-array v4, v3, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 1156
    sget-object v7, Lcom/callapp/contacts/model/contact/ContactField;->addresses:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v7, v4, v6

    invoke-static {v1, v4}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    if-nez p2, :cond_f

    move-object v4, v5

    goto :goto_a

    .line 1157
    :cond_f
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/social/VKData;->getAddress()Lcom/callapp/common/model/json/JSONAddress;

    move-result-object v4

    :goto_a
    if-nez p3, :cond_10

    move-object v7, v5

    goto :goto_b

    .line 1158
    :cond_10
    invoke-virtual {p3}, Lcom/callapp/contacts/model/contact/social/VKData;->getAddress()Lcom/callapp/common/model/json/JSONAddress;

    move-result-object v7

    .line 1159
    :goto_b
    invoke-static {v4, v7}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 1160
    new-instance v4, Lcom/callapp/contacts/loader/vk/VKLoader$6;

    invoke-direct {v4, p0, v0}, Lcom/callapp/contacts/loader/vk/VKLoader$6;-><init>(Lcom/callapp/contacts/loader/vk/VKLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v2, v4}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_11
    new-array v4, v3, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 1171
    sget-object v7, Lcom/callapp/contacts/model/contact/ContactField;->imAddresses:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v7, v4, v6

    invoke-static {v1, v4}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    if-nez p2, :cond_12

    move-object v4, v5

    goto :goto_c

    .line 1172
    :cond_12
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/social/VKData;->getImAddresses()Ljava/util/Collection;

    move-result-object v4

    :goto_c
    if-nez p3, :cond_13

    move-object v7, v5

    goto :goto_d

    .line 1173
    :cond_13
    invoke-virtual {p3}, Lcom/callapp/contacts/model/contact/social/VKData;->getImAddresses()Ljava/util/Collection;

    move-result-object v7

    .line 1174
    :goto_d
    invoke-static {v4, v7}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 1175
    new-instance v4, Lcom/callapp/contacts/loader/vk/VKLoader$7;

    invoke-direct {v4, p0, v0}, Lcom/callapp/contacts/loader/vk/VKLoader$7;-><init>(Lcom/callapp/contacts/loader/vk/VKLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v2, v4}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_14
    new-array v3, v3, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 1185
    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->uploadedPhotosUrl:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    if-nez p2, :cond_15

    move-object p2, v5

    goto :goto_e

    .line 1186
    :cond_15
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/social/VKData;->getUploadedPhotosUrl()Ljava/util/List;

    move-result-object p2

    :goto_e
    if-nez p3, :cond_16

    goto :goto_f

    .line 1187
    :cond_16
    invoke-virtual {p3}, Lcom/callapp/contacts/model/contact/social/VKData;->getUploadedPhotosUrl()Ljava/util/List;

    move-result-object v5

    .line 1188
    :goto_f
    invoke-static {p2, v5}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_17

    .line 1189
    new-instance p2, Lcom/callapp/contacts/loader/vk/VKLoader$8;

    invoke-direct {p2, p0, v0}, Lcom/callapp/contacts/loader/vk/VKLoader$8;-><init>(Lcom/callapp/contacts/loader/vk/VKLoader;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v2, p2}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 1199
    :cond_17
    iget-boolean p2, p0, Lcom/callapp/contacts/loader/vk/VKLoader;->d:Z

    invoke-virtual {p1, v2, p2}, Lcom/callapp/contacts/loader/api/LoadContext;->a(Lcom/callapp/contacts/framework/util/MultiTaskRunner;Z)V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 209
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->updateVKId()V

    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/contact/social/VKData;",
            ">;"
        }
    .end annotation

    .line 220
    const-class v0, Lcom/callapp/contacts/model/contact/social/VKData;

    return-object v0
.end method

.method public getDataSource()Lcom/callapp/contacts/model/contact/DataSource;
    .locals 1

    .line 215
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->vk:Lcom/callapp/contacts/model/contact/DataSource;

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

    .line 226
    sget-object v0, Lcom/callapp/contacts/loader/vk/VKLoader;->b:Ljava/util/Set;

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

    .line 232
    sget-object v0, Lcom/callapp/contacts/loader/vk/VKLoader;->c:Ljava/util/EnumSet;

    return-object v0
.end method

.method public bridge synthetic getLoadedFields()Ljava/util/Set;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/callapp/contacts/loader/vk/VKLoader;->getLoadedFields()Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getSocialHelper()Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;
    .locals 1

    .line 204
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getVKHelper()Lcom/callapp/contacts/api/helper/vk/VKHelper;

    move-result-object v0

    return-object v0
.end method
