.class Lcom/allinone/callerid/start/GuideActivity$a;
.super Ljava/lang/Object;
.source "GuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/start/GuideActivity;->m0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/start/GuideActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/start/GuideActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/start/GuideActivity$a;->d:Lcom/allinone/callerid/start/GuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const-string p1, "android.app.role.DIALER"

    .line 1
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->B(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "get_start_click"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity$a;->d:Lcom/allinone/callerid/start/GuideActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/a;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity$a;->d:Lcom/allinone/callerid/start/GuideActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "first_enter_has_per"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 5
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity$a;->d:Lcom/allinone/callerid/start/GuideActivity;

    const-class v1, Lcom/allinone/callerid/start/PrivacyActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity$a;->d:Lcom/allinone/callerid/start/GuideActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/start/GuideActivity$a;->d:Lcom/allinone/callerid/start/GuideActivity;

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/start/GuideActivity$a;->d:Lcom/allinone/callerid/start/GuideActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 10
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-lt v0, v1, :cond_8

    .line 11
    iget-object v1, p0, Lcom/allinone/callerid/start/GuideActivity$a;->d:Lcom/allinone/callerid/start/GuideActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/util/j1/a;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/allinone/callerid/start/GuideActivity$a;->d:Lcom/allinone/callerid/start/GuideActivity;

    invoke-static {p1, v2}, Lcom/allinone/callerid/start/GuideActivity;->X(Lcom/allinone/callerid/start/GuideActivity;Z)V

    goto/16 :goto_1

    :cond_2
    const/16 v1, 0x1d

    const/16 v3, 0x3e7

    if-lt v0, v1, :cond_6

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity$a;->d:Lcom/allinone/callerid/start/GuideActivity;

    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    if-eqz v0, :cond_7

    .line 14
    invoke-virtual {v0, p1}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 15
    invoke-virtual {v0, p1}, Landroid/app/role/RoleManager;->isRoleHeld(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "default_dialer"

    if-eqz v1, :cond_4

    .line 16
    :try_start_1
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_3

    const-string p1, "This app is the default dialer app"

    .line 17
    invoke-static {v4, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/allinone/callerid/start/GuideActivity$a;->d:Lcom/allinone/callerid/start/GuideActivity;

    invoke-static {p1, v2}, Lcom/allinone/callerid/start/GuideActivity;->X(Lcom/allinone/callerid/start/GuideActivity;Z)V

    goto :goto_0

    .line 19
    :cond_4
    sget-boolean v1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v1, :cond_5

    const-string v1, "This app isn\'t the default dialer app"

    .line 20
    invoke-static {v4, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_5
    invoke-virtual {v0, p1}, Landroid/app/role/RoleManager;->createRequestRoleIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 22
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity$a;->d:Lcom/allinone/callerid/start/GuideActivity;

    invoke-virtual {v0, p1, v3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 23
    :cond_6
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.telecom.action.CHANGE_DEFAULT_DIALER"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME"

    .line 24
    iget-object v1, p0, Lcom/allinone/callerid/start/GuideActivity$a;->d:Lcom/allinone/callerid/start/GuideActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity$a;->d:Lcom/allinone/callerid/start/GuideActivity;

    invoke-virtual {v0, p1, v3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 26
    :cond_7
    :goto_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "first_request_default_dialer"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 27
    iget-object v0, p0, Lcom/allinone/callerid/start/GuideActivity$a;->d:Lcom/allinone/callerid/start/GuideActivity;

    invoke-static {v0, v2}, Lcom/allinone/callerid/start/GuideActivity;->X(Lcom/allinone/callerid/start/GuideActivity;Z)V

    .line 28
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 29
    :cond_8
    iget-object p1, p0, Lcom/allinone/callerid/start/GuideActivity$a;->d:Lcom/allinone/callerid/start/GuideActivity;

    invoke-static {p1, v2}, Lcom/allinone/callerid/start/GuideActivity;->X(Lcom/allinone/callerid/start/GuideActivity;Z)V

    :goto_1
    return-void
.end method
