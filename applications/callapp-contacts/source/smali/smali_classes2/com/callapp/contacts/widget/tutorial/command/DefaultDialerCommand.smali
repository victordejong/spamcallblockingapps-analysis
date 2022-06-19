.class public Lcom/callapp/contacts/widget/tutorial/command/DefaultDialerCommand;
.super Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/event/bus/EventBus;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;-><init>(Lcom/callapp/contacts/event/bus/EventBus;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/callapp/contacts/activity/base/BaseActivity;)V
    .locals 2

    .line 23
    new-instance v0, Lcom/callapp/contacts/widget/tutorial/command/DefaultDialerCommand$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/widget/tutorial/command/DefaultDialerCommand$1;-><init>(Lcom/callapp/contacts/widget/tutorial/command/DefaultDialerCommand;)V

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;ZLcom/callapp/contacts/manager/popup/ActivityResult;)V

    return-void
.end method

.method public getCommandType()Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;
    .locals 1

    .line 34
    sget-object v0, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;->MANDATORY:Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    return-object v0
.end method
