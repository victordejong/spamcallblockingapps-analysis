.class public Lcom/callapp/contacts/widget/tutorial/command/OpenAutoStartCommand;
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
    invoke-static {}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->getInstance()Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/widget/tutorial/command/OpenAutoStartCommand$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/widget/tutorial/command/OpenAutoStartCommand$1;-><init>(Lcom/callapp/contacts/widget/tutorial/command/OpenAutoStartCommand;)V

    invoke-virtual {v0, p1, v1}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ActivityResult;)Z

    .line 30
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->cc:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public getCommandType()Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;
    .locals 1

    .line 35
    sget-object v0, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;->NOT_MANDATORY:Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    return-object v0
.end method
