.class public Lcom/callapp/contacts/widget/tutorial/command/FacebookConnectTutorialCommand;
.super Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/api/helper/common/LoginListener;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/event/bus/EventBus;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;-><init>(Lcom/callapp/contacts/event/bus/EventBus;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 25
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/tutorial/command/FacebookConnectTutorialCommand;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/widget/tutorial/command/events/OnCommandDoneListener;->i:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/tutorial/command/FacebookConnectTutorialCommand;->getCommandType()Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    move-result-object v2

    const/4 v3, 0x0

    .line 1091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

.method protected final a(Lcom/callapp/contacts/activity/base/BaseActivity;)V
    .locals 1

    .line 19
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->setLoginListener(Lcom/callapp/contacts/api/helper/common/LoginListener;)V

    .line 20
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public final b()V
    .locals 4

    .line 30
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/tutorial/command/FacebookConnectTutorialCommand;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/widget/tutorial/command/events/OnCommandDoneListener;->i:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/tutorial/command/FacebookConnectTutorialCommand;->getCommandType()Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    move-result-object v2

    const/4 v3, 0x0

    .line 2091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/tutorial/command/FacebookConnectTutorialCommand;->b()V

    return-void
.end method

.method public getCommandType()Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;
    .locals 1

    .line 45
    sget-object v0, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;->INFORMATIVE:Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    return-object v0
.end method
