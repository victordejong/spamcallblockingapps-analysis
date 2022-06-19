.class public Lcom/callapp/contacts/widget/tutorial/command/DrawOverAppsCommand;
.super Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/event/bus/EventBus;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;-><init>(Lcom/callapp/contacts/event/bus/EventBus;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/callapp/contacts/activity/base/BaseActivity;)V
    .locals 1

    .line 19
    new-instance v0, Lcom/callapp/contacts/widget/tutorial/command/DrawOverAppsCommand$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/widget/tutorial/command/DrawOverAppsCommand$1;-><init>(Lcom/callapp/contacts/widget/tutorial/command/DrawOverAppsCommand;)V

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/Activities;->c(Landroid/app/Activity;Lcom/callapp/contacts/manager/popup/PopupDoneListener;)V

    return-void
.end method

.method public getCommandType()Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;
    .locals 1

    .line 29
    sget-object v0, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;->NOT_MANDATORY:Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    return-object v0
.end method
