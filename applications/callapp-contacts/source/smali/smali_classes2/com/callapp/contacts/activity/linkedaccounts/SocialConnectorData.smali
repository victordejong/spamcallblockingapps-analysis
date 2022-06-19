.class public Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;
.super Lcom/callapp/contacts/activity/base/BaseViewTypeData;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseViewTypeData;-><init>()V

    .line 18
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->isLoggedIn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;->a:Z

    .line 19
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getApiConstantNetworkId()I

    move-result v1

    invoke-static {v1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getSocialBadgeColoredResId(I)I

    move-result v1

    iput v1, p0, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;->b:I

    .line 20
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getUserName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;->d:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;->e:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 46
    :cond_1
    check-cast p1, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;

    .line 48
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;->a:Z

    iget-boolean v2, p1, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;->a:Z

    if-eq v1, v2, :cond_2

    return v0

    .line 49
    :cond_2
    iget v1, p0, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;->b:I

    iget v2, p1, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;->b:I

    if-eq v1, v2, :cond_3

    return v0

    .line 50
    :cond_3
    iget-object v1, p0, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 51
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    return v0
.end method

.method public getHelper()Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;->e:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    return-object v0
.end method

.method public getIconRes()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;->b:I

    return v0
.end method

.method public getSocialNetworkName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 57
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;->a:Z

    mul-int/lit8 v0, v0, 0x1f

    .line 58
    iget v1, p0, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 59
    iget-object v1, p0, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 60
    iget-object v1, p0, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public isLoggedIn()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;->a:Z

    return v0
.end method
