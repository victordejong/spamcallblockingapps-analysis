.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->c(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    .line 1541
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$18;->c:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$18;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$18;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 2

    .line 1544
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->cX:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 1545
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$18;->a:Landroid/content/Intent;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$18;->b:Ljava/lang/String;

    const-string v1, "source"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1546
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$18;->a:Landroid/content/Intent;

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
