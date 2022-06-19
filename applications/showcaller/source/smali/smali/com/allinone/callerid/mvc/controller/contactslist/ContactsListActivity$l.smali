.class Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$l;
.super Ljava/lang/Object;
.source "ContactsListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->P0(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$l;->d:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$l;->d:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;

    const-class v1, Lcom/allinone/callerid/mvc/controller/contactslist/EditFavActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$l;->d:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;

    const/16 v1, 0x2bf

    invoke-virtual {v0, p1, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$l;->d:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "tv_edit"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    return-void
.end method
