.class Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$3$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$3;->onClickListener(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$3;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$3;Z)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$3$1;->b:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$3;

    iput-boolean p2, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$3$1;->a:Z

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$3$1;->b:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$3;->a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->e()V

    .line 164
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$3$1;->a:Z

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$3$1;->b:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$3;->b:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;

    iget-object v1, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$3$1;->b:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$3;

    iget-object v1, v1, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$3;->a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;->a(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V

    :cond_0
    return-void
.end method
