.class Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter$2;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;

.field final synthetic b:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter;Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter$2;->b:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter$2;->a:Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter$2;->b:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter;

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iget-object v1, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter$2;->a:Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/linkedaccounts/SocialConnectorData;->getHelper()Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter;->b(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsAdapter;Landroidx/appcompat/widget/SwitchCompat;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V

    return-void
.end method
