.class Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a;
.super Ljava/lang/Object;
.source "ContactsListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;
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
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->b0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->e0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a$a;-><init>(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->e0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a$b;-><init>(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$n;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$n;-><init>(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->k0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$n;)Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$n;

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->j0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$n;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.allinone.callerid.STARRED_DATA"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lb/p/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->G0(Landroid/app/Activity;)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->l0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->n0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
