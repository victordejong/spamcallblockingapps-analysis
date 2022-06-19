.class Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$2;->a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 402
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$2;->a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;

    iget-object v0, v0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;->c:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;

    iget-object v1, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$2;->a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;

    iget-object v1, v1, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;->b:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

    invoke-static {v1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->b(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getApiConstantNetworkId()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->a(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;IZ)V

    .line 405
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$2$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$2$1;-><init>(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$2;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    .line 412
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$2;->a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;

    iget-object v0, v0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;->b:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

    invoke-static {v0}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->b(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v0

    instance-of v0, v0, Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$2;->a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;

    iget-object v0, v0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;->c:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;

    iget-object v1, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$2;->a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;

    iget-object v1, v1, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;->c:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;

    invoke-static {v1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->a(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;)Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->c(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)V

    return-void

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$2;->a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;

    iget-object v0, v0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;->c:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;

    iget-object v1, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$2;->a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;

    iget-object v1, v1, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;->b:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->b(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)V

    return-void
.end method
