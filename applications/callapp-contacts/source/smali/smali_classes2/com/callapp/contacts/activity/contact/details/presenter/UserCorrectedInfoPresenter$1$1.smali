.class Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$1;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$1;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$1$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 70
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$1$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$1;->b:Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 72
    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->getDataSource(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v1

    .line 73
    iget-object v2, v1, Lcom/callapp/contacts/model/contact/DataSource;->socialIdField:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 75
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v2

    iget v1, v1, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v1, v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 78
    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;Z)V

    .line 84
    :cond_0
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$1$1;->a:Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$1;

    iget-object v2, v2, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$1;->a:Lcom/callapp/framework/phone/Phone;

    invoke-static {v0, v1, v2, v3}, Lcom/callapp/contacts/util/UserCorrectedInfoUtil;->a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;I)V

    :cond_1
    return-void
.end method
