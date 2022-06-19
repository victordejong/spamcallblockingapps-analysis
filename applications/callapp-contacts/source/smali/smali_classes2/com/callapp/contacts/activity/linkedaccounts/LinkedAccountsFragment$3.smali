.class Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


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

    .line 152
    iput-object p1, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$3;->b:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$3;->a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$3;->b:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;->a(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V

    return-void
.end method

.method public static synthetic lambda$4DINwGfLkoXGB3vFbxEVrmMQAzU(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$3;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$3;->a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 3

    .line 155
    iget-object p1, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$3;->a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    instance-of v0, p1, Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    if-eqz v0, :cond_0

    .line 157
    move-object v1, p1

    check-cast v1, Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    new-instance v2, Lcom/callapp/contacts/activity/linkedaccounts/-$$Lambda$LinkedAccountsFragment$3$4DINwGfLkoXGB3vFbxEVrmMQAzU;

    invoke-direct {v2, p0, p1}, Lcom/callapp/contacts/activity/linkedaccounts/-$$Lambda$LinkedAccountsFragment$3$4DINwGfLkoXGB3vFbxEVrmMQAzU;-><init>(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$3;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->setDisconnectListener(Lcom/callapp/contacts/api/helper/google/GoogleHelper$DisconnectListener;)V

    .line 159
    :cond_0
    new-instance p1, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$3$1;

    invoke-direct {p1, p0, v0}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$3$1;-><init>(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$3;Z)V

    .line 168
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$3$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method
