.class public Lcom/callapp/contacts/widget/tutorial/command/RunInBackgroundCommand;
.super Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/event/bus/EventBus;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;-><init>(Lcom/callapp/contacts/event/bus/EventBus;)V

    return-void
.end method

.method private synthetic a()V
    .locals 4

    .line 18
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/tutorial/command/RunInBackgroundCommand;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/widget/tutorial/command/events/OnCommandDoneListener;->i:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/tutorial/command/RunInBackgroundCommand;->getCommandType()Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    move-result-object v2

    const/4 v3, 0x0

    .line 1091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

.method public static synthetic lambda$3DosD7sw5k0WSnJuaRZGsz8N-4I(Lcom/callapp/contacts/widget/tutorial/command/RunInBackgroundCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/widget/tutorial/command/RunInBackgroundCommand;->a()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/callapp/contacts/activity/base/BaseActivity;)V
    .locals 1

    .line 18
    new-instance v0, Lcom/callapp/contacts/widget/tutorial/command/-$$Lambda$RunInBackgroundCommand$3DosD7sw5k0WSnJuaRZGsz8N-4I;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/widget/tutorial/command/-$$Lambda$RunInBackgroundCommand$3DosD7sw5k0WSnJuaRZGsz8N-4I;-><init>(Lcom/callapp/contacts/widget/tutorial/command/RunInBackgroundCommand;)V

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/PowerUtils;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/task/Task$DoneListener;)V

    return-void
.end method

.method public getCommandType()Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;
    .locals 1

    .line 23
    sget-object v0, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;->MANDATORY:Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    return-object v0
.end method
