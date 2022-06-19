.class public Lcom/callapp/contacts/widget/tutorial/command/CallAppPlusTutorialCommand;
.super Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/event/bus/EventBus;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;-><init>(Lcom/callapp/contacts/event/bus/EventBus;)V

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/tutorial/command/CallAppPlusTutorialCommand;->a:Z

    return-void
.end method


# virtual methods
.method protected final a(Lcom/callapp/contacts/activity/base/BaseActivity;)V
    .locals 5

    .line 26
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getNotificationListenersSettingsScreenIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 27
    new-instance v0, Lcom/callapp/contacts/widget/tutorial/command/CallAppPlusTutorialCommand$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/widget/tutorial/command/CallAppPlusTutorialCommand$1;-><init>(Lcom/callapp/contacts/widget/tutorial/command/CallAppPlusTutorialCommand;Lcom/callapp/contacts/activity/base/BaseActivity;)V

    .line 39
    iget-boolean v1, p0, Lcom/callapp/contacts/widget/tutorial/command/CallAppPlusTutorialCommand;->a:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 40
    iput-boolean v1, p0, Lcom/callapp/contacts/widget/tutorial/command/CallAppPlusTutorialCommand;->a:Z

    .line 41
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    sget-object v4, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->SMS:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    aput-object v4, v3, v1

    invoke-virtual {v2, p1, v0, v0, v3}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Lcom/callapp/contacts/activity/base/BaseActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;[Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V

    return-void

    .line 45
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public getCommandType()Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;
    .locals 1

    .line 52
    sget-object v0, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;->NOT_MANDATORY:Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    return-object v0
.end method
