.class Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$n$a;
.super Ljava/lang/Object;
.source "ContactsListActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/r/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$n;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$n;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$n$a;->a:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$n$a;->a:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$n;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$n;->a:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->B0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$n$a;->a:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$n;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$n;->a:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->n0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$n$a;->a:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$n;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$n;->a:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->a0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)V

    :goto_0
    return-void
.end method
