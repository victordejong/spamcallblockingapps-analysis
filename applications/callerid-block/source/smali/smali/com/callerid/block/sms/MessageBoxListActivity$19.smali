.class Lcom/callerid/block/sms/MessageBoxListActivity$19;
.super Lcom/rey/material/app/SimpleDialog$Builder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/sms/MessageBoxListActivity;->k1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic n:Lcom/callerid/block/sms/MessageBoxListActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/sms/MessageBoxListActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$19;->n:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-direct {p0, p2}, Lcom/rey/material/app/SimpleDialog$Builder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/rey/material/app/a;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/rey/material/app/Dialog$Builder;->a(Lcom/rey/material/app/a;)V

    return-void
.end method

.method public d(Lcom/rey/material/app/a;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/rey/material/app/Dialog$Builder;->d(Lcom/rey/material/app/a;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_2

    iget-object p1, p0, Lcom/callerid/block/sms/MessageBoxListActivity$19;->n:Lcom/callerid/block/sms/MessageBoxListActivity;

    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/role/RoleManager;

    if-eqz p1, :cond_3

    const-string v0, "android.app.role.SMS"

    invoke-virtual {p1, v0}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/app/role/RoleManager;->isRoleHeld(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "tony"

    if-eqz v1, :cond_0

    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_3

    const-string p1, "This app is the default sms app"

    invoke-static {v2, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    sget-boolean v1, Lcom/callerid/block/util/w;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "This app isn\'t the default sms app"

    invoke-static {v2, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, v0}, Landroid/app/role/RoleManager;->createRequestRoleIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$19;->n:Lcom/callerid/block/sms/MessageBoxListActivity;

    const/16 v1, 0x3dd

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$19;->n:Lcom/callerid/block/sms/MessageBoxListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/t0;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "package"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/callerid/block/sms/MessageBoxListActivity$19;->n:Lcom/callerid/block/sms/MessageBoxListActivity;

    const/16 v1, 0x3dc

    :goto_0
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected i(Lcom/rey/material/app/Dialog;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Lcom/rey/material/app/Dialog;->K(II)Lcom/rey/material/app/Dialog;

    invoke-static {}, Lcom/callerid/block/util/r0;->b()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/rey/material/app/Dialog;->r0(Landroid/graphics/Typeface;)Lcom/rey/material/app/Dialog;

    return-void
.end method
