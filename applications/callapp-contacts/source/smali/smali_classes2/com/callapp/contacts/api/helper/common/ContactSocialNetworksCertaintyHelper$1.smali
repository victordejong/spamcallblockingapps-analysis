.class Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;Lcom/callapp/contacts/model/contact/ContactData;Landroid/app/Activity;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1;->c:Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;

    iput-object p2, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    iput-object p3, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1;->b:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 5

    .line 111
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1;->c:Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;

    invoke-static {v0}, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->a(Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;)Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1;->c:Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;

    invoke-static {v0}, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->b(Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v2, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1;->c:Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;

    invoke-static {v2}, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->a(Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;)Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->resetPhoto()V

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1;->c:Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;

    invoke-static {v0}, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->b(Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1;->c:Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;

    invoke-static {v2}, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->c(Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1;->c:Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;

    invoke-static {v3}, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->d(Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;)Lcom/callapp/contacts/popup/selection/PersonSelectPopup$PersonSelectListener;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->a(Lcom/callapp/contacts/model/contact/ContactData;Landroid/content/Context;Lcom/callapp/contacts/model/contact/DataSource;Lcom/callapp/contacts/popup/selection/PersonSelectPopup$PersonSelectListener;)V

    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1;->c:Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;

    invoke-static {v0}, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->c(Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    iget v0, v0, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-static {v0}, Lcom/callapp/contacts/api/helper/common/SocialNetworksSearchUtil;->getSocialNetworkName(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1;->c:Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;

    invoke-static {v1}, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->b(Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1;->b:Landroid/app/Activity;

    new-instance v3, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1$1;

    iget-object v4, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1;->c:Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;

    invoke-static {v4}, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->b(Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1$1;-><init>(Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V

    invoke-static {v1, v2, v0, v3}, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Landroid/app/Activity;Ljava/lang/String;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;)V

    return-void
.end method
