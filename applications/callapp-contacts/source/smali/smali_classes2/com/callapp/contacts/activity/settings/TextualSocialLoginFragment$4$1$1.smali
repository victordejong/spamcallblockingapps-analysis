.class Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4$1;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4$1;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4$1$1;->a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 334
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4$1$1;->a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4$1;

    iget-object v2, v2, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4$1;->b:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4;

    iget-object v2, v2, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4;->a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

    invoke-static {v2}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;->d(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f1204b5

    invoke-static {v2, v1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1111
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 335
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4$1$1;->a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4$1;->b:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4;

    iget-object v0, v0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4;->b:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;

    iget-object v1, p0, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4$1$1;->a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4$1;->b:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4;

    iget-object v1, v1, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$4;->a:Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->b(Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment$HelperData;)V

    return-void
.end method
