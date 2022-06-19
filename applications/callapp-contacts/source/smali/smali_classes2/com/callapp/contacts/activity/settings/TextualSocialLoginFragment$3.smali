.class Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$3;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->a(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

.field final synthetic b:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$3;->b:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$3;->a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$3;->a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

    invoke-static {v0}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->b(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$3;->b:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 275
    new-instance v2, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$3$1;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$3$1;-><init>(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$3;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
