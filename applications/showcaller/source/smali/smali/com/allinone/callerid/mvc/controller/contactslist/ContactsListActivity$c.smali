.class Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$c;
.super Ljava/lang/Object;
.source "ContactsListActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/r/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->N0()V
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
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$c;->a:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$c;->a:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;

    invoke-static {v0, p2}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->w0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;Ljava/util/List;)Ljava/util/List;

    .line 2
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$c;->a:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;

    iput-object p1, p2, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->v:Ljava/util/List;

    .line 3
    iput-object p3, p2, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->x:Ljava/util/List;

    .line 4
    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->t0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$m;

    move-result-object p1

    const/16 p2, 0x8ae

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$c;->a:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->t0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$m;

    move-result-object v0

    const/16 v1, 0xd05

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
