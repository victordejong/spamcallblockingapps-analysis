.class public Lcom/callapp/contacts/widget/tutorial/command/HuaweiProtectedAppsTutorialCommand;
.super Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/event/bus/EventBus;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;-><init>(Lcom/callapp/contacts/event/bus/EventBus;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/callapp/contacts/activity/base/BaseActivity;)V
    .locals 2

    .line 22
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cd:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 23
    new-instance v0, Lcom/callapp/contacts/widget/tutorial/command/HuaweiProtectedAppsTutorialCommand$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/widget/tutorial/command/HuaweiProtectedAppsTutorialCommand$1;-><init>(Lcom/callapp/contacts/widget/tutorial/command/HuaweiProtectedAppsTutorialCommand;)V

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ActivityResult;)V

    return-void
.end method

.method public getCommandType()Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;
    .locals 1

    .line 33
    sget-object v0, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;->NOT_MANDATORY:Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    return-object v0
.end method
