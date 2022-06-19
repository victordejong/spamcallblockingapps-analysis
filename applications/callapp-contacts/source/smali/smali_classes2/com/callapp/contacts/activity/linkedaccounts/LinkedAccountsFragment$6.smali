.class Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6;
.super Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;->d(Landroidx/appcompat/widget/SwitchCompat;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/SwitchCompat;

.field final synthetic b:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

.field final synthetic c:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Landroidx/appcompat/widget/SwitchCompat;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6;->c:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;

    iput-object p3, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6;->a:Landroidx/appcompat/widget/SwitchCompat;

    iput-object p4, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6;->b:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    invoke-direct {p0, p2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;-><init>(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 230
    invoke-super {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;->a()V

    .line 231
    iget-object v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6;->c:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    new-instance v1, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6$2;

    invoke-direct {v1, p0, v0}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6$2;-><init>(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6;->c:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;->a(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;)Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$LinkedAccountsFragmentEvents;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6;->c:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;->a(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;)Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$LinkedAccountsFragmentEvents;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6;->b:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$LinkedAccountsFragmentEvents;->a(Lcom/callapp/contacts/model/contact/DataSource;)V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 3

    .line 209
    invoke-super {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$DefaultLoginListener;->b()V

    .line 210
    iget-object v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6;->c:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    new-instance v1, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6$1;-><init>(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 220
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v1, 0x7f1204b6

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1111
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public final c()V
    .locals 0

    .line 225
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6;->b()V

    return-void
.end method
