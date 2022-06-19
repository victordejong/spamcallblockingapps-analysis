.class public Lcom/callapp/contacts/activity/proxy/ContactListTabProxyActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/proxy/ContactListTabProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 15
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.callapp.contacts"

    const-string v2, "com.callapp.contacts.activity.contact.list.ContactsListActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v0, 0x10000

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 17
    invoke-static {p0, p1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 18
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/proxy/ContactListTabProxyActivity;->finish()V

    return-void
.end method
