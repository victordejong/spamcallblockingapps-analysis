.class Lcom/allinone/callerid/mvc/controller/CallLogActivity$a;
.super Ljava/lang/Object;
.source "CallLogActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/CallLogActivity;->e0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/CallLogActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/CallLogActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$a;->a:Lcom/allinone/callerid/mvc/controller/CallLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$a;->a:Lcom/allinone/callerid/mvc/controller/CallLogActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/CallLogActivity;->X(Lcom/allinone/callerid/mvc/controller/CallLogActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->w0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$a;->a:Lcom/allinone/callerid/mvc/controller/CallLogActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100353

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$a;->a:Lcom/allinone/callerid/mvc/controller/CallLogActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/CallLogActivity;->X(Lcom/allinone/callerid/mvc/controller/CallLogActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    .line 2
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$a;->a:Lcom/allinone/callerid/mvc/controller/CallLogActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$a;->a:Lcom/allinone/callerid/mvc/controller/CallLogActivity;

    .line 3
    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/CallLogActivity;->X(Lcom/allinone/callerid/mvc/controller/CallLogActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$a;->a:Lcom/allinone/callerid/mvc/controller/CallLogActivity;

    .line 4
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100128

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/allinone/callerid/mvc/controller/CallLogActivity$a$b;

    invoke-direct {v2, p0, p1}, Lcom/allinone/callerid/mvc/controller/CallLogActivity$a$b;-><init>(Lcom/allinone/callerid/mvc/controller/CallLogActivity$a;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$a;->a:Lcom/allinone/callerid/mvc/controller/CallLogActivity;

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/mvc/controller/CallLogActivity$a$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/CallLogActivity$a$a;-><init>(Lcom/allinone/callerid/mvc/controller/CallLogActivity$a;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    const/4 v0, -0x1

    .line 8
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$a;->a:Lcom/allinone/callerid/mvc/controller/CallLogActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/CallLogActivity;->Y(Lcom/allinone/callerid/mvc/controller/CallLogActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v0, -0x2

    .line 9
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$a;->a:Lcom/allinone/callerid/mvc/controller/CallLogActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const-string p1, "android.app.role.DIALER"

    .line 1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x17

    if-lt p2, p4, :cond_6

    .line 2
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p4

    invoke-static {p4}, Lcom/allinone/callerid/util/j1/a;->i(Landroid/content/Context;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 3
    invoke-direct {p0, p3}, Lcom/allinone/callerid/mvc/controller/CallLogActivity$a;->a(I)V

    goto :goto_1

    :cond_0
    const/16 p4, 0x1d

    const/16 p5, 0x3e7

    if-lt p2, p4, :cond_4

    .line 4
    :try_start_0
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$a;->a:Lcom/allinone/callerid/mvc/controller/CallLogActivity;

    const-class p4, Landroid/app/role/RoleManager;

    invoke-virtual {p2, p4}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/role/RoleManager;

    if-eqz p2, :cond_5

    .line 5
    invoke-virtual {p2, p1}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 6
    invoke-virtual {p2, p1}, Landroid/app/role/RoleManager;->isRoleHeld(Ljava/lang/String;)Z

    move-result p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "default_dialer"

    if-eqz p4, :cond_2

    .line 7
    :try_start_1
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_1

    const-string p1, "This app is the default dialer app"

    .line 8
    invoke-static {v0, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_1
    invoke-direct {p0, p3}, Lcom/allinone/callerid/mvc/controller/CallLogActivity$a;->a(I)V

    goto :goto_0

    .line 10
    :cond_2
    sget-boolean p4, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p4, :cond_3

    const-string p4, "This app isn\'t the default dialer app"

    .line 11
    invoke-static {v0, p4}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_3
    invoke-virtual {p2, p1}, Landroid/app/role/RoleManager;->createRequestRoleIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 13
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$a;->a:Lcom/allinone/callerid/mvc/controller/CallLogActivity;

    invoke-virtual {p2, p1, p5}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 14
    :cond_4
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.telecom.action.CHANGE_DEFAULT_DIALER"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME"

    .line 15
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p4

    invoke-static {p4}, Lcom/allinone/callerid/util/h1;->M(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$a;->a:Lcom/allinone/callerid/mvc/controller/CallLogActivity;

    invoke-virtual {p2, p1, p5}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 17
    :cond_5
    :goto_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string p2, "delete_request_default_dialer"

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 18
    invoke-direct {p0, p3}, Lcom/allinone/callerid/mvc/controller/CallLogActivity$a;->a(I)V

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 20
    :cond_6
    invoke-direct {p0, p3}, Lcom/allinone/callerid/mvc/controller/CallLogActivity$a;->a(I)V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method
