.class public final synthetic Lcom/callapp/contacts/activity/linkedaccounts/-$$Lambda$LinkedAccountsFragment$3$4DINwGfLkoXGB3vFbxEVrmMQAzU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/api/helper/google/GoogleHelper$DisconnectListener;


# instance fields
.field public final synthetic f$0:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$3;

.field public final synthetic f$1:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$3;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/linkedaccounts/-$$Lambda$LinkedAccountsFragment$3$4DINwGfLkoXGB3vFbxEVrmMQAzU;->f$0:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$3;

    iput-object p2, p0, Lcom/callapp/contacts/activity/linkedaccounts/-$$Lambda$LinkedAccountsFragment$3$4DINwGfLkoXGB3vFbxEVrmMQAzU;->f$1:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    return-void
.end method


# virtual methods
.method public final onDisconnected()V
    .locals 2

    iget-object v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/-$$Lambda$LinkedAccountsFragment$3$4DINwGfLkoXGB3vFbxEVrmMQAzU;->f$0:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$3;

    iget-object v1, p0, Lcom/callapp/contacts/activity/linkedaccounts/-$$Lambda$LinkedAccountsFragment$3$4DINwGfLkoXGB3vFbxEVrmMQAzU;->f$1:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$3;->lambda$4DINwGfLkoXGB3vFbxEVrmMQAzU(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$3;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V

    return-void
.end method
