.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/contact/list/MoreDialogManager$OnMoreDialogItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;)V
    .locals 0

    .line 912
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 920
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    sget-object v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CONTACTS_NONE_MULTI_SELECT:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 925
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    sget-object v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->CALL_LOG_MULTI_SELECT:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;)V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 930
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$13;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->b(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/calllog/CallLogFragment;

    if-eqz v0, :cond_0

    .line 932
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->a()V

    :cond_0
    return-void
.end method
