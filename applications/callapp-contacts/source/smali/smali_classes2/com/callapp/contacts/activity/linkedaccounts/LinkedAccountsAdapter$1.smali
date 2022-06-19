.class Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorViewHolder;

.field final synthetic b:Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;

.field final synthetic c:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter;Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorViewHolder;Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter$1;->c:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter$1;->a:Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorViewHolder;

    iput-object p3, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter$1;->b:Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 57
    iget-object p1, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter$1;->c:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter;

    iget-object v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter$1;->a:Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorViewHolder;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorViewHolder;->getSwitchView()Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter$1;->b:Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;->getHelper()Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter;->a(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter;Landroidx/appcompat/widget/SwitchCompat;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V

    return-void
.end method
