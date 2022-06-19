.class public Lcom/callapp/contacts/loader/social/twitter/TwitterLoader;
.super Lcom/callapp/contacts/loader/social/BaseSocialLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/loader/social/BaseSocialLoader<",
        "Lcom/callapp/contacts/model/contact/social/TwitterData;",
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

    .line 24
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->twitterScreenName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->genomeData:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->names:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/loader/social/twitter/TwitterLoader;->b:Ljava/util/Set;

    .line 27
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->twitterScreenName:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->twitterData:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->twitterSearchResults:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->names:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->isFriend:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/loader/social/twitter/TwitterLoader;->c:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/callapp/contacts/loader/social/BaseSocialLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 7

    .line 32
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 33
    iget-object v1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    .line 35
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getTwitterData()Lcom/callapp/contacts/model/contact/social/TwitterData;

    move-result-object v2

    if-nez v2, :cond_0

    .line 36
    new-instance v2, Lcom/callapp/contacts/model/contact/social/TwitterData;

    invoke-direct {v2}, Lcom/callapp/contacts/model/contact/social/TwitterData;-><init>()V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/model/contact/ContactData;->setTwitterData(Lcom/callapp/contacts/model/contact/social/TwitterData;)V

    .line 39
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/loader/api/LoadContext;->a()Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    move-result-object v2

    .line 41
    sget-object v3, Lcom/callapp/contacts/loader/social/twitter/LoadTwitterUserTask;->c:Ljava/util/Set;

    invoke-static {v1, v3}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 42
    new-instance v3, Lcom/callapp/contacts/loader/social/twitter/LoadTwitterUserTask;

    invoke-direct {v3, p0, p1, p2}, Lcom/callapp/contacts/loader/social/twitter/LoadTwitterUserTask;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    :cond_1
    const/4 v3, 0x1

    new-array v4, v3, [Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v5, 0x0

    .line 45
    sget-object v6, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 46
    new-instance v4, Lcom/callapp/contacts/loader/social/twitter/LoadTwitterPhotoTask;

    invoke-direct {v4, p0, p1, p2}, Lcom/callapp/contacts/loader/social/twitter/LoadTwitterPhotoTask;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    invoke-virtual {v2, v4}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 49
    :cond_2
    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->twitterData:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 50
    new-instance v4, Lcom/callapp/contacts/loader/social/twitter/LoadTwitterLastTweetTask;

    invoke-direct {v4, p0, p1, p2}, Lcom/callapp/contacts/loader/social/twitter/LoadTwitterLastTweetTask;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    invoke-virtual {v2, v4}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 53
    :cond_3
    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->mutualFriends:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 54
    new-instance v4, Lcom/callapp/contacts/loader/social/LoadMutualFriendsTask;

    invoke-virtual {p0}, Lcom/callapp/contacts/loader/social/twitter/TwitterLoader;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v5

    iget v5, v5, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-direct {v4, p0, p1, p2, v5}, Lcom/callapp/contacts/loader/social/LoadMutualFriendsTask;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;I)V

    invoke-virtual {v2, v4}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 57
    :cond_4
    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->isFriend:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getTwitterData()Lcom/callapp/contacts/model/contact/social/TwitterData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/social/TwitterData;->isFriend()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 58
    new-instance v0, Lcom/callapp/contacts/loader/social/LoadIsFriendTask;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/callapp/contacts/loader/social/LoadIsFriendTask;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;I)V

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    .line 63
    :cond_5
    invoke-virtual {p1, v2, v3}, Lcom/callapp/contacts/loader/api/LoadContext;->a(Lcom/callapp/contacts/framework/util/MultiTaskRunner;Z)V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 73
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->updateTwitterScreenName()V

    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/callapp/contacts/model/contact/social/TwitterData;",
            ">;"
        }
    .end annotation

    .line 95
    const-class v0, Lcom/callapp/contacts/model/contact/social/TwitterData;

    return-object v0
.end method

.method public getDataSource()Lcom/callapp/contacts/model/contact/DataSource;
    .locals 1

    .line 90
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->twitter:Lcom/callapp/contacts/model/contact/DataSource;

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

    .line 85
    sget-object v0, Lcom/callapp/contacts/loader/social/twitter/TwitterLoader;->b:Ljava/util/Set;

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

    .line 79
    sget-object v0, Lcom/callapp/contacts/loader/social/twitter/TwitterLoader;->c:Ljava/util/EnumSet;

    return-object v0
.end method

.method public bridge synthetic getLoadedFields()Ljava/util/Set;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/callapp/contacts/loader/social/twitter/TwitterLoader;->getLoadedFields()Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getSocialHelper()Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;
    .locals 1

    .line 68
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getTwitterHelper()Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    move-result-object v0

    return-object v0
.end method
