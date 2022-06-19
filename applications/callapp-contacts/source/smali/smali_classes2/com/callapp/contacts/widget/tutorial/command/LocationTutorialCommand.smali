.class public Lcom/callapp/contacts/widget/tutorial/command/LocationTutorialCommand;
.super Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/event/bus/EventBus;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;-><init>(Lcom/callapp/contacts/event/bus/EventBus;)V

    return-void
.end method

.method private synthetic a()V
    .locals 4

    .line 28
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/tutorial/command/LocationTutorialCommand;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/widget/tutorial/command/events/OnCommandDoneListener;->i:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/tutorial/command/LocationTutorialCommand;->getCommandType()Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    move-result-object v2

    const/4 v3, 0x0

    .line 1091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 29
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Permissions"

    const-string v2, "location - permission"

    const-string v3, "denied"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic b()V
    .locals 4

    .line 24
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/tutorial/command/LocationTutorialCommand;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/widget/tutorial/command/events/OnCommandDoneListener;->i:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/tutorial/command/LocationTutorialCommand;->getCommandType()Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    move-result-object v2

    const/4 v3, 0x0

    .line 2091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 25
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Permissions"

    const-string v2, "location - permission"

    const-string v3, "granted"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$XjRh26QqIVptDDjmIc092JfqP5g(Lcom/callapp/contacts/widget/tutorial/command/LocationTutorialCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/widget/tutorial/command/LocationTutorialCommand;->a()V

    return-void
.end method

.method public static synthetic lambda$kzkOJQrEI5tXt9kVpm7Ng-Y7ZVM(Lcom/callapp/contacts/widget/tutorial/command/LocationTutorialCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/widget/tutorial/command/LocationTutorialCommand;->b()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/callapp/contacts/activity/base/BaseActivity;)V
    .locals 6

    .line 22
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/widget/tutorial/command/-$$Lambda$LocationTutorialCommand$kzkOJQrEI5tXt9kVpm7Ng-Y7ZVM;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/widget/tutorial/command/-$$Lambda$LocationTutorialCommand$kzkOJQrEI5tXt9kVpm7Ng-Y7ZVM;-><init>(Lcom/callapp/contacts/widget/tutorial/command/LocationTutorialCommand;)V

    new-instance v2, Lcom/callapp/contacts/widget/tutorial/command/-$$Lambda$LocationTutorialCommand$XjRh26QqIVptDDjmIc092JfqP5g;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/widget/tutorial/command/-$$Lambda$LocationTutorialCommand$XjRh26QqIVptDDjmIc092JfqP5g;-><init>(Lcom/callapp/contacts/widget/tutorial/command/LocationTutorialCommand;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    sget-object v4, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->LOCATION:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Lcom/callapp/contacts/activity/base/BaseActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;[Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V

    return-void
.end method

.method public getCommandType()Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;
    .locals 1

    .line 36
    sget-object v0, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;->MANDATORY:Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    return-object v0
.end method
