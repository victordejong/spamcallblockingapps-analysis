.class Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1$1;
.super Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1$1;->a:Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1;

    invoke-direct {p0, p2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;-><init>(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 125
    invoke-super {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;->a()V

    .line 126
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1$1;->a:Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1;

    iget-object v0, v0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1$1;->a:Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1;

    iget-object v1, v1, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1$1;->a:Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1;

    iget-object v2, v2, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1;->c:Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;

    invoke-static {v2}, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->c(Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1$1;->a:Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1;

    iget-object v3, v3, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper$1;->c:Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;

    invoke-static {v3}, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->d(Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;)Lcom/callapp/contacts/popup/selection/PersonSelectPopup$PersonSelectListener;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/callapp/contacts/api/helper/common/ContactSocialNetworksCertaintyHelper;->a(Lcom/callapp/contacts/model/contact/ContactData;Landroid/content/Context;Lcom/callapp/contacts/model/contact/DataSource;Lcom/callapp/contacts/popup/selection/PersonSelectPopup$PersonSelectListener;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 131
    invoke-super {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;->b()V

    .line 132
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v1, 0x7f120415

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;)V

    return-void

    .line 135
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v1, 0x7f12052f

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;)V

    return-void
.end method
