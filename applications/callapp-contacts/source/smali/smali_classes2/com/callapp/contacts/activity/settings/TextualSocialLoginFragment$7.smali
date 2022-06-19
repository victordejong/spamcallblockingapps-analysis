.class Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;
.super Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

.field final synthetic c:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Landroid/app/Activity;Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;->c:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;

    iput-object p3, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;->a:Landroid/app/Activity;

    iput-object p4, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;->b:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

    invoke-direct {p0, p2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;-><init>(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 398
    invoke-super {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;->a()V

    .line 399
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;->c:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;

    iget-object v1, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;->b:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

    const-string v2, "connect complete"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->a(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;Ljava/lang/String;)V

    .line 400
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$2;-><init>(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 379
    invoke-super {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;->b()V

    .line 380
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v1, 0x7f1204b6

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1111
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 382
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;->a:Landroid/app/Activity;

    new-instance v1, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$1;-><init>(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 424
    invoke-super {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;->c()V

    .line 425
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$3;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$3;-><init>(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
