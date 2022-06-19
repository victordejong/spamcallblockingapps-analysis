.class Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

.field final synthetic b:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$2;->b:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$2;->a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 126
    iget-object v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$2;->a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    iget-object v1, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$2;->b:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$2;->a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getCurrentUserId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$2$1;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$2$1;-><init>(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$2;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Lcom/callapp/contacts/manager/task/OutcomeListener;)V

    return-void
.end method
