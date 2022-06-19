.class Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a$b;
.super Ljava/lang/Object;
.source "ContactsListActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a$b;->a:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p3, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a$b;->a:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a;

    iget-object p3, p3, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;

    invoke-static {p3}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->h0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)I

    move-result p3

    if-le p2, p3, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string p4, "input_method"

    invoke-virtual {p3, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/inputmethod/InputMethodManager;

    .line 3
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 p4, 0x0

    invoke-virtual {p3, p1, p4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a$b;->a:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->h0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)I

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a$b;->a:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;

    invoke-static {p1, p2}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->i0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a$b;->a:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->g0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Lcom/allinone/callerid/customview/BaseEditText;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a$b;->a:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->g0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Lcom/allinone/callerid/customview/BaseEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isCursorVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a$b;->a:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity$a;->d:Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;->g0(Lcom/allinone/callerid/mvc/controller/contactslist/ContactsListActivity;)Lcom/allinone/callerid/customview/BaseEditText;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    :cond_0
    return-void
.end method
