.class Lcom/callerid/block/mvc/controller/CallLogActivity$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/CallLogActivity;->W()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/mvc/controller/CallLogActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/CallLogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/CallLogActivity$1;->a:Lcom/callerid/block/mvc/controller/CallLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 3

    new-instance v0, Lcom/callerid/block/mvc/controller/CallLogActivity$1$1;

    const v1, 0x7f110159

    invoke-direct {v0, p0, v1, p1}, Lcom/callerid/block/mvc/controller/CallLogActivity$1$1;-><init>(Lcom/callerid/block/mvc/controller/CallLogActivity$1;II)V

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/CallLogActivity$1;->a:Lcom/callerid/block/mvc/controller/CallLogActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rey/material/app/Dialog$Builder;->n(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/CallLogActivity$1;->a:Lcom/callerid/block/mvc/controller/CallLogActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rey/material/app/Dialog$Builder;->g(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/CallLogActivity$1;->a:Lcom/callerid/block/mvc/controller/CallLogActivity;

    invoke-static {v2}, Lcom/callerid/block/mvc/controller/CallLogActivity;->Q(Lcom/callerid/block/mvc/controller/CallLogActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {v2}, Lcom/callerid/block/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/CallLogActivity$1;->a:Lcom/callerid/block/mvc/controller/CallLogActivity;

    invoke-static {v2}, Lcom/callerid/block/mvc/controller/CallLogActivity;->Q(Lcom/callerid/block/mvc/controller/CallLogActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callerid/block/search/CallLogBean;

    invoke-virtual {p1}, Lcom/callerid/block/search/CallLogBean;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rey/material/app/Dialog$Builder;->o(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;

    invoke-static {v0}, Lcom/rey/material/app/a;->K1(Lcom/rey/material/app/a$b;)Lcom/rey/material/app/a;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/CallLogActivity$1;->a:Lcom/callerid/block/mvc/controller/CallLogActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->v()Landroidx/fragment/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/j;->i()Landroidx/fragment/app/p;

    move-result-object v0

    const-class v1, Lcom/callerid/block/mvc/controller/CallLogActivity$1;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/p;->d(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/p;

    invoke-virtual {v0}, Landroidx/fragment/app/p;->h()I

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

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x17

    if-lt p2, p4, :cond_6

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p4

    invoke-static {p4}, Lcom/callerid/block/util/x0/a;->g(Landroid/content/Context;)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_2

    :cond_0
    const/16 p4, 0x1d

    const/16 p5, 0x3e7

    if-lt p2, p4, :cond_4

    :try_start_0
    iget-object p2, p0, Lcom/callerid/block/mvc/controller/CallLogActivity$1;->a:Lcom/callerid/block/mvc/controller/CallLogActivity;

    const-class p4, Landroid/app/role/RoleManager;

    invoke-virtual {p2, p4}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/role/RoleManager;

    if-eqz p2, :cond_5

    invoke-virtual {p2, p1}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-virtual {p2, p1}, Landroid/app/role/RoleManager;->isRoleHeld(Ljava/lang/String;)Z

    move-result p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "default_dialer"

    if-eqz p4, :cond_2

    :try_start_1
    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_1

    const-string p1, "This app is the default dialer app"

    invoke-static {v0, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, p3}, Lcom/callerid/block/mvc/controller/CallLogActivity$1;->a(I)V

    goto :goto_1

    :cond_2
    sget-boolean p4, Lcom/callerid/block/util/w;->a:Z

    if-eqz p4, :cond_3

    const-string p4, "This app isn\'t the default dialer app"

    invoke-static {v0, p4}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p2, p1}, Landroid/app/role/RoleManager;->createRequestRoleIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/callerid/block/mvc/controller/CallLogActivity$1;->a:Lcom/callerid/block/mvc/controller/CallLogActivity;

    :goto_0
    invoke-virtual {p2, p1, p5}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_4
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.telecom.action.CHANGE_DEFAULT_DIALER"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME"

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p4

    invoke-static {p4}, Lcom/callerid/block/util/t0;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/callerid/block/mvc/controller/CallLogActivity$1;->a:Lcom/callerid/block/mvc/controller/CallLogActivity;

    goto :goto_0

    :cond_5
    :goto_1
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string p2, "delete_request_default_dialer"

    invoke-virtual {p1, p2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-direct {p0, p3}, Lcom/callerid/block/mvc/controller/CallLogActivity$1;->a(I)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_6
    :goto_2
    invoke-direct {p0, p3}, Lcom/callerid/block/mvc/controller/CallLogActivity$1;->a(I)V

    :goto_3
    const/4 p1, 0x1

    return p1
.end method
