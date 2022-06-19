.class public Lcom/callapp/contacts/widget/tutorial/command/ShowOnLockScreenCommand;
.super Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/event/bus/EventBus;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;-><init>(Lcom/callapp/contacts/event/bus/EventBus;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/callapp/contacts/activity/base/BaseActivity;)V
    .locals 2

    .line 27
    invoke-static {p1}, Lcom/callapp/contacts/util/callappRomHelper/romHelper/miui/MIUIHelper;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/widget/tutorial/command/ShowOnLockScreenCommand$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/widget/tutorial/command/ShowOnLockScreenCommand$1;-><init>(Lcom/callapp/contacts/widget/tutorial/command/ShowOnLockScreenCommand;)V

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/callapp/contacts/manager/popup/ActivityResult;)V

    .line 34
    new-instance p1, Lcom/callapp/contacts/widget/tutorial/command/ShowOnLockScreenCommand$2;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/widget/tutorial/command/ShowOnLockScreenCommand$2;-><init>(Lcom/callapp/contacts/widget/tutorial/command/ShowOnLockScreenCommand;)V

    const/16 v0, 0x7d0

    .line 40
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/tutorial/command/ShowOnLockScreenCommand$2;->schedule(I)Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method public getCommandType()Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;
    .locals 1

    .line 45
    sget-object v0, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;->NOT_MANDATORY:Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    return-object v0
.end method
