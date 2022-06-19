.class Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4;->onClickListener(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4;Landroid/app/Activity;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4$1;->b:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4;

    iput-object p2, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4$1;->b:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4;

    iget-object v0, v0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4;->a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

    invoke-static {v0}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->b(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->e()V

    .line 331
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4$1;->b:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4;

    iget-object v0, v0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4;->b:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;

    iget-object v1, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4$1;->b:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4;

    iget-object v1, v1, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4;->a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

    invoke-static {v1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->b(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getApiConstantNetworkId()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->a(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;IZ)V

    .line 332
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4$1;->a:Landroid/app/Activity;

    new-instance v1, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4$1$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4$1$1;-><init>(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
