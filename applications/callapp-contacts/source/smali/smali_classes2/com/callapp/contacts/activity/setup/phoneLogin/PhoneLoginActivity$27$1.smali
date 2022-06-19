.class Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$27$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$27;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$27;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$27;)V
    .locals 0

    .line 1302
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$27$1;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$27;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 6

    .line 1306
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    const-string p1, "android.permission.READ_CALL_LOG"

    invoke-static {p1}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    const-string p1, "android.permission.READ_PHONE_STATE"

    invoke-static {p1}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1321
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$27$1;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$27;

    iget-object p1, p1, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$27;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1307
    :cond_1
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$27$1;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$27;

    iget-object v0, v0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$27;->b:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$27$1;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$27;

    iget-object v1, v1, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$27;->a:Ljava/lang/Runnable;

    new-instance v2, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$27$1$1;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$27$1$1;-><init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$27$1;)V

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    const/4 v4, 0x0

    sget-object v5, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->CALL_LOG:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->PHONE:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    aput-object v5, v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Lcom/callapp/contacts/activity/base/BaseActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;[Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V

    return-void
.end method
