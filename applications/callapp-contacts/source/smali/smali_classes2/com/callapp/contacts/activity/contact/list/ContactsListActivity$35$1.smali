.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$35$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$35;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$35;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$35;)V
    .locals 0

    .line 3413
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$35$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$35;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3416
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$35$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$35;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$35;->b:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$35$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$35;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$35;->b:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getState()Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->b(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;)Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;)V

    return-void
.end method
