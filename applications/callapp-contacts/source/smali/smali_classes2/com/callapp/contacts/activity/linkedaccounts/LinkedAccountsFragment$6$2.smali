.class Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6;Landroid/app/Activity;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6$2;->b:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6;

    iput-object p2, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6$2;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 235
    iget-object v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6$2;->b:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6;

    iget-object v0, v0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6;->b:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    iget-object v1, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6$2;->a:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/activity/settings/TextualSocialLoginFragment;->a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Landroid/app/Activity;Z)V

    .line 236
    iget-object v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6$2;->b:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6;

    iget-object v0, v0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6;->c:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment;->refreshData()V

    return-void
.end method
