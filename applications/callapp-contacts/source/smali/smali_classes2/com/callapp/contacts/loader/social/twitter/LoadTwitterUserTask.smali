.class Lcom/callapp/contacts/loader/social/twitter/LoadTwitterUserTask;
.super Lcom/callapp/contacts/loader/social/BaseSocialLoaderTask;
.source "SourceFile"


# static fields
.field static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 19
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->twitterData:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->names:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/loader/social/twitter/LoadTwitterUserTask;->c:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/loader/social/BaseSocialLoaderTask;-><init>(Lcom/callapp/contacts/loader/social/BaseSocialLoader;Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 5

    .line 27
    iget-object v0, p0, Lcom/callapp/contacts/loader/social/twitter/LoadTwitterUserTask;->a:Lcom/callapp/contacts/loader/api/LoadContext;

    iget-object v0, v0, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 28
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getTwitterData()Lcom/callapp/contacts/model/contact/social/TwitterData;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->get()Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/loader/social/twitter/LoadTwitterUserTask;->b:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1954
    invoke-virtual {v2, v3, v4}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->d(Ljava/lang/String;Z)Lcom/twitter/sdk/android/core/models/User;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 36
    iget-object v3, v2, Lcom/twitter/sdk/android/core/models/User;->name:Ljava/lang/String;

    .line 37
    invoke-static {v0, v1, v3}, Lcom/callapp/contacts/model/contact/social/SocialDataUtils;->setFullName(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/SocialData;Ljava/lang/String;)Z

    .line 40
    iget-object v2, v2, Lcom/twitter/sdk/android/core/models/User;->description:Ljava/lang/String;

    .line 41
    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/model/contact/social/TwitterDataUtils;->setDescription(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/TwitterData;Ljava/lang/String;)Z

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 43
    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/model/contact/social/SocialDataUtils;->setFullName(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/SocialData;Ljava/lang/String;)Z

    .line 44
    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/model/contact/social/TwitterDataUtils;->setDescription(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/social/TwitterData;Ljava/lang/String;)Z

    return-void
.end method
