.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$33;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->g(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Z)V
    .locals 0

    .line 3211
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$33;->b:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    iput-boolean p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$33;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3215
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$33;->b:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->N(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3216
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$33;->b:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getContactsFragment()Lcom/callapp/contacts/activity/contact/list/ContactsFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3218
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$33;->a:Z

    .line 4161
    iget-object v2, v0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;

    if-eqz v2, :cond_0

    .line 4162
    iget-object v2, v0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->a(Z)V

    const/4 v1, 0x0

    .line 4163
    iput-object v1, v0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;

    :cond_0
    return-void
.end method
