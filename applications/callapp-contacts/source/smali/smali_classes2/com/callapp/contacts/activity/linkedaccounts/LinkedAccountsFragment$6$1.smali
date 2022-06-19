.class Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6$1;->a:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6$1;->a:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6;

    iget-object v0, v0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6;->a:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6$1;->a:Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6;

    iget-object v0, v0, Lcom/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$6;->a:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :cond_0
    return-void
.end method
