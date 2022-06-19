.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$22;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Landroid/content/Intent;)V
    .locals 0

    .line 1677
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$22;->b:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$22;->a:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    .line 1680
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$22;->b:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->finish()V

    .line 1681
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$22;->b:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$22;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method
