.class Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$2;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$2$1;->a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 409
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$2$1;->a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$2;

    iget-object v0, v0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$2;->a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;

    iget-object v0, v0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;->b:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

    invoke-static {v0}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->b(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$2$1;->a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$2;

    iget-object v1, v1, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$2;->a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;

    iget-object v1, v1, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$2$1;->a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$2;

    iget-object v2, v2, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$2;->a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;

    iget-object v2, v2, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;->c:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;

    invoke-static {v2}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->b(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Landroid/app/Activity;Z)V

    return-void
.end method
