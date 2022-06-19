.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$14;
.super Lcom/callapp/contacts/popup/contact/DrawOverAppsRequestDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->p()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V
    .locals 0

    .line 1034
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$14;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-direct {p0, p2}, Lcom/callapp/contacts/popup/contact/DrawOverAppsRequestDialog;-><init>(Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    return-void
.end method


# virtual methods
.method public onDialogDismissed(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1037
    invoke-super {p0, p1}, Lcom/callapp/contacts/popup/contact/DrawOverAppsRequestDialog;->onDialogDismissed(Landroid/content/DialogInterface;)V

    .line 1038
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$14;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->D(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Z

    return-void
.end method
