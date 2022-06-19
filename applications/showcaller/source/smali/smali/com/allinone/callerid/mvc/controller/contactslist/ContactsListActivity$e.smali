.class Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$e;
.super Ljava/lang/Object;
.source "ContactsListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->H0()V
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
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$e;->d:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$e;->d:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;

    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->p0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$e;->d:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;

    const v1, 0x7f09043a

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->f0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$e;->d:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->q0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$e;->d:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->s0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$e;->d:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->r0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
