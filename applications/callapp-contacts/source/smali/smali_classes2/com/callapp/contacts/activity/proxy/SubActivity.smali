.class public abstract Lcom/callapp/contacts/activity/proxy/SubActivity;
.super Lcom/callapp/contacts/util/BaseTransparentActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/callapp/contacts/util/BaseTransparentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getTabState()Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 20
    invoke-super {p0, p1}, Lcom/callapp/contacts/util/BaseTransparentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.callapp.contacts"

    const-string v2, "com.callapp.contacts.activity.contact.list.ContactsListActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "com.callapp.contacts.FROM_SUB_ACTIVITY"

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/proxy/SubActivity;->getTabState()Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$ContentState;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tab"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000

    .line 26
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const v0, 0x8000

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 28
    invoke-static {p0, p1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 29
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/proxy/SubActivity;->finish()V

    return-void
.end method
