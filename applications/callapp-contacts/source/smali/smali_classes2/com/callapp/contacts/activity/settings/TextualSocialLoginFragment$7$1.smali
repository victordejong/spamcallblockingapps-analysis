.class Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;->b()V
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

    .line 382
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$1;->a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$1;->a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;

    iget-object v0, v0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;->b:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

    invoke-static {v0}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->b(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v0

    instance-of v0, v0, Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$1;->a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;

    iget-object v0, v0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;->c:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;

    iget-object v1, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$1;->a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;

    iget-object v1, v1, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;->c:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;

    invoke-static {v1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->a(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;)Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->c(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)V

    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$1;->a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;

    iget-object v0, v0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;->c:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;

    iget-object v1, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7$1;->a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;

    iget-object v1, v1, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$7;->b:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->b(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)V

    return-void
.end method
