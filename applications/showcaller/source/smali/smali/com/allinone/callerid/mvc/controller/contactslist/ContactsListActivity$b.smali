.class Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$b;
.super Ljava/lang/Object;
.source "ContactsListActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/r/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->G0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$b;->a:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$b;->a:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->A0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$b;->a:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->t0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$m;

    move-result-object p1

    const/16 v0, 0x3e7

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
